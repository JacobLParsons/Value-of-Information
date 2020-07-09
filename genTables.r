# Generate Data for Each List
for(list in 1:7)
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
    missingLogit = is.na(data$logit)

    data$Y[missingLogit] = NA
    data$logit[missingY] = NA

    sampleSize = data$n[,list,]

    numPresent = sum(!is.na(data$logit[,list,]))
    
    setwd(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/", sep = ""))

    load("./all.RData")
    
    length = length(chain$mu)

    table1 = matrix(NA, nrow = length, ncol = 2*numPresent)
    table2 = matrix(NA, nrow = length, ncol = 11)

    present = !is.na(data$logit[,list,])

    # Generate the tables

    data.full = data

    print(dim(table1))
    
    for(n in 1:length)
    {
        #Simulate Data
        N = chain$N[n,,]
        p = matrix(NA, nrow = 27, ncol = 9)
        phat = matrix(NA, nrow = 27, ncol = 9)
        Y = matrix(NA, nrow = 27, ncol = 9)

        a = runif(1)
        b = rgamma(1, 1, .01)

        alpha = a*b
        beta = b - alpha

        p[,1] = logit(rbeta(27, alpha, beta))

        p[which(p[,1] == Inf),1] = 10
        p[which(p[,1] == -Inf),1] = -10
        
        Y[,1] = rbinom(27, N[,1], invlogit(p[,1]))
        
        theta = chain$theta[n]
        gamma = rnorm(n = 1, mean=0, sd = sqrt(chain$sigmaGammaSq[n]) )
        delta = chain$delta[n,]

        phat[,1] = rnorm(n = 27, mean = p[,1] + theta + gamma + delta, sd = sqrt(chain$sigmaESq[n]/sampleSize[,1]) )

        for(year in 2:9)
        {
            p[,year] = p[,year - 1] + rnorm(27, mean = 0, sd = sqrt(chain$sigmaPSq) )
            
            p[which(p[,year] == Inf),year] = 10
            p[which(p[,year] == -Inf),year] = -10
            
            Y[,year] = rbinom(27, N[,year], invlogit(p[,year]))
            
            phat[,year] = rnorm(n = 27, mean = p[,year] + theta + gamma + delta, sd = sqrt(chain$sigmaESq[n]/sampleSize[,year]))
            
        }

        table1[n,1:numPresent] = phat[present]
        table1[n,(1+numPresent):(2*numPresent)] = Y[present]

        ## Target Theta

        current = list()
        current$p = abind(chain$p[n,,,], invlogit(p), along = 2)
        current$delta = delta
        current$gamma = c(chain$gamma[n,], gamma)
        current$sigmaESq = chain$sigmaESq[n]
        numYears = 9

        data$logit = abind(data.full$logit[,-list,], phat, along = 2 )
        data$n = abind(data.full$n[,-list,], data.full$n[,list,], along = 2 )
        

        mean = logit(current$p) + replicate(numYears,outer(current$delta, current$gamma, FUN=function(x,y) (x+y)))
        logitpresent = !is.na(data$logit)
        remove = is.infinite(data$logit - mean)
        logitpresent = !is.na(data$logit) & !remove
        var = 1/(1 + sum(data$n[logitpresent])/current$sigmaESq )
        
        coef = sum(data$n[logitpresent]*(data$logit[logitpresent] - mean[logitpresent]) )/current$sigmaESq

        table2[n,1] = var*coef

        ## Target Mu
        current$N = chain$N[n,,]
        current$sigmaNSq = chain$sigmaNSq[n,,]

        
        NSUpresent = !is.na(data$NSU)
        var = 1 / ( 1 + sum((current$N[NSUpresent])^2/(current$sigmaNSq[NSUpresent]) ) )
        coef = sum(current$N[NSUpresent]^2*(log(data$NSU[NSUpresent]) - log(current$N[NSUpresent]) )/(current$sigmaNSq[NSUpresent] ) )

        table2[n,2] = var*coef

        ## Target Means

        table2[n,3] = digamma(chain$alpha0[n]) - digamma(chain$beta0[n])

        for(year in 2:9)
        {
            table2[n, 2+year] = table2[n, 1+year] + chain$yearTrend[n, year]
        }
    }
    
    save(list = c("table1", "table2"), file = "./tables.RData")

    
}

setwd("/storage/work/jlp592/RevisedUkraine")

source("./LoadData.r") 
source("./MCMC.r")


list = "NSU"
data = LoadData()

data$logit = logit(data$phat)
data$logit[is.infinite(data$logit)] = NA

missingNSU = is.na(data$NSU)
missingY = is.na(data$Y)
missingLogit = is.na(data$logit)

data$Y[missingLogit] = NA
data$logit[missingY] = NA

data$NSU[5,2] = NA
data$NSU[9,2] = NA

numNSU = sum(!is.na(data$NSU) )
numPresent = numNSU

length = length(chain$mu)

NSUpresent = !is.na(data$NSU)

setwd(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/NSU/", sep = ""))

length = length(chain$mu)

table1 = matrix(NA, nrow = length, ncol = numNSU)
table2 = matrix(NA, nrow = length, ncol = 11)

data.full = data

load("./all.RData")

 
for(n in 1:length)
{
    NSU = rep(NA, numNSU)

    mu = rnorm(1, 0, 1)
    tauSq = 1/rgamma(1, shape = 5, rate = 5)
    sigmaNSq = tauSq * data$NSU.se[NSUpresent]

    NSU = log(chain$N[n,,][NSUpresent]) + mu + rnorm(numNSU, 0, sd = sqrt(sigmaNSq[1]/chain$N[NSUpresent]^2) )

    table1[n,] = NSU

    ## Target Theta

    current = list()
    current$p = chain$p[n,,,]
    current$delta = chain$delta[n,]
    current$gamma = chain$gamma[n,]
    current$sigmaESq = chain$sigmaESq[n]
    numYears = 9

    data$logit = data.full$logit
    data$n = data.full$n

    mean = logit(current$p) + replicate(numYears,outer(current$delta, current$gamma, FUN=function(x,y) (x+y)))
    logitpresent = !is.na(data$logit)
    remove = is.infinite(data$logit - mean)
    logitpresent = !is.na(data$logit) & !remove
    var = 1/(1 + sum(data$n[logitpresent])/current$sigmaESq )
    
    coef = sum(data$n[logitpresent]*(data$logit[logitpresent] - mean[logitpresent]) )/current$sigmaESq

    table2[n,1] = var*coef

    ## Target Mu
    current$N = chain$N[n,,]
    current$sigmaNSq =  sigmaNSq

    data$NSU[NSUpresent] = exp(NSU)
    
    NSUpresent = !is.na(data$NSU)
    var = 1 / ( 1 + sum((current$N[NSUpresent])^2/(current$sigmaNSq) , na.rm = TRUE) )
    coef = sum(current$N[NSUpresent]^2*(log(data$NSU[NSUpresent]) - log(current$N[NSUpresent ]) )/(current$sigmaNSq ) , na.rm = TRUE)

    table2[n,2] = var*coef

    ## Target Means

    table2[n,3] = digamma(chain$alpha0[n]) - digamma(chain$beta0[n])

    for(year in 2:9)
    {
        table2[n, 2+year] = table2[n, 1+year] + chain$yearTrend[n, year]
    }

    
}


save(list = c("table1", "table2"), file = "./tables.RData")
