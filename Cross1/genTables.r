# Generate Data for Each List
for(site in 1:27)
{
    # Set Working Directory
    setwd("/storage/work/jlp592/RevisedUkraine")

    source("./LoadData.r") 
    source("./MCMC.r")

    # Load Data and get important values
    data = LoadData()

    data$logit = logit(data$phat)
    data$logit[is.infinite(data$logit)] = NA
    
    missingNSU = is.na(data$NSU)
    missingY = is.na(data$Y)
    missingLogit = is.na(data$logits)

    data$Y[missingLogit] = NA
    data$logit[missingY] = NA

    numNSU = sum(!is.na(data$NSU[site,] ))
    numPhat = sum(!is.na(data$logit[site,,])) 
    numPresent = numPhat  + numNSU

    NSUpresent = !is.na(data$NSU)
    phatpresent = !is.na(data$logit[site,,]) 
    
    setwd(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation/", site, "/", sep = ""))

    #load("./1.RData")
    load("./all.RData")
    
    length = length(chain$mu)

    table1 = matrix(NA, nrow = length, ncol = numNSU + 2*numPhat)
    table2 = matrix(NA, nrow = length, ncol = 11)

    # Generate the tables

    data.full = data

    
    for(n in 1:length)
    {
        NSUpresent = !is.na(data.full$NSU)
        
        ##Simulate Data
        pi = rep(NA, 9)
        pi[1] = rbeta(1, chain$alpha0[n], chain$beta0[n])
        
        N = rep(NA, 9)
        N[1] = rbinom(1, size = data.full$R[site,1], prob = pi[1])
        
        p = matrix(NA, nrow = 7, ncol = 9)
        p[,1] = rbeta(7, chain$alpha[n,],chain$beta[n,])

        delta = rnorm(1, mean = 0, sd = sqrt(chain$sigmaDeltaSq[n]))
        theta = chain$theta[n]
        gamma = chain$gamma[n,]
        
        phat = matrix(NA, nrow = 7, ncol = 9)
        phat[,1] = logit(p[,1]) + theta + delta + gamma + rnorm(7, mean = 0,  sd = sqrt(chain$sigmaESq[n]/data.full$n[site, ,1]) )

        Y = matrix(NA, nrow = 7, ncol = 9)
        Y[,1] = rbinom(n = 7, size = N[1], prob = p[,1])
        
        mu = chain$mu[n]
        sigmaNSq = (chain$sigmaNSq[n,1,] / data$NSU.se[1,]^2)*data.full$NSU.se[site,]^2

        NSU = rep(NA, 9)
        NSU[1] = log(N[1]) + mu + rnorm(1, 0, sd = sqrt(sigmaNSq[1]/N[1]^2) )

        
        for(year in 2:9)
        {
            ##Simulate Data
            yearTrend = chain$yearTrend[n,year]
            pi[year] = invlogit( logit(pi[year - 1]) + yearTrend + rnorm(n=1, mean = 0, sd = sqrt(chain$sigmaPiSq[n]) ) )
                      
            N[year] = rbinom(1, size = data.full$R[site,year], prob = pi[year])
                        
            p[,year] = invlogit( logit(p[,year - 1]) + rnorm(n=7, mean = 0, sd = sqrt(chain$sigmaPSq[n]) ) )
                        
            phat[,year] = logit(p[,year]) + theta + delta + gamma + rnorm(7, mean = 0,  sd = sqrt(chain$sigmaESq[n]/data.full$n[site, ,year]) )
            
            Y[,year] = rbinom(n = 7, size = N[year], prob = p[,year])
            
            NSU[year] = log(N[year]) + mu + rnorm(1, 0, sd = sqrt(sigmaNSq[year]/N[year]^2) )
            
        }

        if(sum(NSUpresent[site,]) > 0)
        {
            table1[n,1] = NSU[NSUpresent[site,]]
        }

        table1[n,(sum(NSUpresent[site,]) + 1):(sum(NSUpresent[site,]) + numPhat)] = phat[phatpresent]
        table1[n,(sum(NSUpresent[site,]) + numPhat + 1):(sum(NSUpresent[site,]) + 2*numPhat)] = Y[phatpresent]

        ## Target Theta

        current = list()
        current$p = abind(chain$p[n,,,], invlogit(p), along = 1)
        current$delta = c(chain$delta[n,], delta)
        current$gamma = gamma
        current$sigmaESq = chain$sigmaESq[n]
        numYears = 9

        data$logit = abind(data.full$logit[-site,,], phat, along = 1 )
        data$n = abind(data.full$n[-site,,], data.full$n[site,,], along = 1)
        

        mean = logit(current$p) + replicate(numYears,outer(current$delta, current$gamma, FUN=function(x,y) (x+y)))
        logitpresent = !is.na(data$logit)
        remove = is.infinite(data$logit - mean)
        logitpresent = !is.na(data$logit) & !remove
        var = 1/(1 + sum(data$n[logitpresent])/current$sigmaESq )
        
        coef = sum(data$n[logitpresent]*(data$logit[logitpresent] - mean[logitpresent]) )/current$sigmaESq

        table2[n,1] = var*coef

        ## Target Mu
        current$N = rbind(chain$N[n,,], N)
        current$sigmaNSq = rbind(chain$sigmaNSq[n,,], sigmaNSq)

        data$NSU = rbind(data.full$NSU[-site,], exp(NSU) )
        
        NSUpresent = !is.na(data$NSU)
        var = 1 / ( 1 + sum((current$N[NSUpresent])^2/(current$sigmaNSq[NSUpresent]) , na.rm = TRUE) )
        coef = sum(current$N[NSUpresent]^2*(log(data$NSU[NSUpresent ]) - log(current$N[NSUpresent ]) )/(current$sigmaNSq[NSUpresent] ) , na.rm = TRUE)

        table2[n,2] = var*coef

        ## Target Means

        table2[n,3] = digamma(chain$alpha0[n]) - digamma(chain$beta0[n])

        for(year in 2:9)
        {
            table2[n, 2+year] = table2[n, 1+year] + chain$yearTrend[n, year]
        }
    }
    
    save(list = c("table1", "table2"), file = "./tables.RData")
    print(dim(table1))
    
}
