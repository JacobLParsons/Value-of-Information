
library(abind)
setwd("/storage/home/jlp592/work/RevisedUkraine/")
source("./MCMC.r")

setwd("/storage/home/jlp592/work/RevisedUkraine/results")
      
load("./2.RData")
chainA = chain
load("./3.RData")
chainB = chain

chain = chainBind(chainA, chainB)    

chainA = chain
load("./4.RData")
chainB = chain

chain = chainBind(chainA, chainB)    

save(chain, file = "./all.RData")



