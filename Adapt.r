source("./MCMC.r")
load("../UkraineWithYearEffect/results/current.RData")
current2 = current

current = list("muPi0" = mean(logit(current2$pi[,1])),
               "sigmaPi0" = var(logit(current2$pi[,1])),
               "muP0" = colMeans(logit(current2$p[,,1])), 
               "sigmaP0" = apply(logit(current2$p[,,1]), MARGIN = 2, FUN = var),
               "pi" = current2$pi,
               "sigmaPiSq" = current2$sigmaPiSq,             
               "N" = current2$N,
               "p" = current2$p,
               "sigmaPSq" = current2$sigmaPSq,
               "sigmaNSq" = current2$sigmaNSq,
               "tauSq" = current2$tauSq,
               "sigmaGammaSq" = current2$sigmaGammaSq,
               "sigmaDeltaSq" = current2$sigmaDeltaSq,
               "sigmaESq" = current2$sigmaESq,
               "mu" = current2$mu,
               "theta" = current2$theta,
               "gamma" = current2$gamma, 
               "delta" = current2$delta,
               "yearTrend" = current2$yearTrend,
               "sigmaSq.yearTrend" = current2$sigmaSq.yearTrend
               )
save(file = "./results/current.RData", list = c("current"))
