setwd("/storage/work/jlp592/RevisedUkraine")

source("./MCMC.r")
source("./LoadData.r")

load("/storage/home/jlp592/work/RevisedUkraine/results/all.RData")

data = LoadData()

data$logit = logit(data$phat)
data$logit[is.infinite(data$logit)] = NA

missingNSU = is.na(data$NSU)
missingY = is.na(data$Y)
missingLogit = is.na(data$logits)

data$Y[missingLogit] = NA
data$logit[missingY] = NA

setwd("/storage/home/jlp592/work/RevisedUkraine/Prospective2")

length = length(chain$mu)

table1 = array(NA, dim = c(length, 27, 17,2) )

table2 = matrix(NA, nrow = length, ncol = 4)
table3 = matrix(NA, nrow = length, ncol = 30)

for(n in 1:length)
{
    yearTrend = rnorm(1, 0 , sqrt(chain$sigmaSq.yearTrend[n] ) )
    yearTrend2 = rnorm(1, 0 , sqrt(chain$sigmaSq.yearTrend[n] ) )
    pi.logit = logit(chain$pi[n,,9]) + yearTrend + rnorm(27, mean = 0, sd = sqrt(chain$sigmaPiSq[n]) )
    pi.logit2 = pi.logit + yearTrend2 + rnorm(27, mean = 0, sd = sqrt(chain$sigmaPiSq[n]) )
    
    N = rbinom(n =27, size= data$R[,9], prob = invlogit(pi.logit) )
    N2 = rbinom(n = 27, size= data$R[,9], prob = invlogit(pi.logit2) )

    p.logit = matrix(NA, nrow= 27,ncol = 7)
    p.logit2 = matrix(NA, nrow= 27,ncol = 7)
    phat.logit.newlist = matrix(NA, nrow= 27,ncol = 7)
    phat.logit.newlist2 = matrix(NA, nrow= 27,ncol = 7)
    Y =  matrix(NA, nrow= 27,ncol = 7)
    Y2 =  matrix(NA, nrow= 27,ncol = 7)
    
    a = runif(1)
    b = rgamma(1, 1, .01)

    alpha = a*b
    beta = b - alpha

    p.logit.newlist =  logit(rbeta(n=27, alpha, beta)) + rnorm(27, mean = 0, sd = sqrt(9*chain$sigmaPSq[n]) )
    p.logit.newlist2 =  p.logit.newlist + rnorm(27, mean = 0, sd = sqrt(chain$sigmaPSq[n]) )

    p.logit.newlist[which(p.logit.newlist == Inf)] = 10
    p.logit.newlist[which(p.logit.newlist == -Inf)] = -10

    p.logit.newlist2[which(p.logit.newlist2 == Inf)] = 10
    p.logit.newlist2[which(p.logit.newlist2 == -Inf)] = -10
    
    Y.newlist = rbinom(27, size = N, prob = invlogit(p.logit.newlist)  )
    Y.newlist2 = rbinom(27, size = N, prob = invlogit(p.logit.newlist2)  )
                                        # p for old lists
    for(list in 1:7)
    {       
        p.logit[,list] = logit(chain$p[n,,list,9] )  + rnorm(27, mean = 0, sd = sqrt(chain$sigmaPSq[n]) )
        p.logit2[,list] = p.logit[,list]  + rnorm(27, mean = 0, sd = sqrt(chain$sigmaPSq[n]) )
        
        Y[,list] = rbinom(27, size = N , prob = invlogit(p.logit[,list])  )
        Y2[,list] = rbinom(27, size = N , prob = invlogit(p.logit2[,list])  )

        phat.logit = p.logit + chain$theta[n] + chain$delta[n,] + chain$gamma[n,list] + rnorm(27, mean = 0, sd = sqrt(chain$sigmaESq[n]/250) )
        phat.logit2 = p.logit2 + chain$theta[n] + chain$delta[n,] + chain$gamma[n,list] + rnorm(27, mean = 0, sd = sqrt(chain$sigmaESq[n]/250) )
           
    }

    gamma =  rnorm(n = 1, mean=0, sd = sqrt(chain$sigmaGammaSq[n]) )
    phat.logit.newlist = p.logit.newlist + chain$theta[n] + chain$delta[n,] + gamma + rnorm(27, mean = 0, sd = sqrt(chain$sigmaESq[n]/250))
    phat.logit.newlist2 = p.logit.newlist2 + chain$theta[n] + chain$delta[n,] + gamma + rnorm(27, mean = 0, sd = sqrt(chain$sigmaESq[n]/250))
 
    NSU = log(N) + chain$mu[n] + rnorm(1, 0, sd = sqrt(chain$sigmaNSq[n,,2]/N^2) )
    NSU2 = log(N) + chain$mu[n] + rnorm(1, 0, sd = sqrt(chain$sigmaNSq[n,,2]/N2^2) )

    table1[n, ,1:7,1] = phat.logit
    table1[n, ,8,1] = phat.logit.newlist

    table1[n, ,9:15,1] = log(Y+1)
    table1[n, ,16,1] = log(Y.newlist + 1)

    table1[n, ,17,1] = NSU

    table1[n, ,1:7,2] = phat.logit2
    table1[n, ,8,2] = phat.logit.newlist2

    table1[n, ,9:15,2] = log(Y2+1)
    table1[n, ,16,2] = log(Y.newlist2 + 1)

    table1[n, ,17,2] = NSU2
    
    ## Target Theta

    current = list()
    current$p = chain$p[n,,,]
    current$delta = chain$delta[n,]
    current$gamma = chain$gamma[n,]
    current$sigmaESq = chain$sigmaESq[n]
    numYears = 9

    mean = logit(current$p) + replicate(numYears,outer(current$delta, current$gamma, FUN=function(x,y) (x+y)))
    logitpresent = !is.na(data$logit)
    remove = is.infinite(data$logit - mean)
    logitpresent = !is.na(data$logit) & !remove
    var = 1/(1 + sum(data$n[logitpresent])/current$sigmaESq )
    
    coef = sum(data$n[logitpresent]*(data$logit[logitpresent] - mean[logitpresent]) )/current$sigmaESq

    table2[n,1] = var*coef
    
    ## Target Mu
    NSUpresent = !is.na(data$NSU)

    current$N = chain$N[n,,]
    current$sigmaNSq =  (chain$sigmaNSq[n,,])[NSUpresent]
    

    var = 1 / ( 1 + sum((current$N[NSUpresent])^2/(current$sigmaNSq) , na.rm = TRUE) )
    coef = sum(current$N[NSUpresent]^2*(log(data$NSU[NSUpresent]) - log(current$N[NSUpresent ]) )/(current$sigmaNSq ) , na.rm = TRUE)

    table2[n,2] = var*coef

    ## Target Means

    table2[n,3] =  digamma(chain$alpha0[n]) - digamma(chain$beta0[n]) + sum(chain$yearTrend[n,]) + yearTrend
    table2[n,4] =  table2[n,3] + yearTrend2

    ## True Parameters
    table3[n,1] = chain$theta[n]
    
    table3[n,2] = chain$mu[n]
    
    table3[n,3] =  digamma(chain$alpha0[n]) - digamma(chain$beta0[n]) + sum(chain$yearTrend[n,]) + yearTrend

    table3[n,4:30] = N

}

save(list = c("table1", "table2", "table3"), file = "./tables2.RData")
