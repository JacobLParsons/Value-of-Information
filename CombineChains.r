library(abind)
setwd("/storage/home/jlp592/work/RevisedUkraine/")
source("./MCMC.r")

for(list in 1:7)
{
    setwd(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/", sep = ""))
    load("./1.RData")
    chainA = chain
    load("./2.RData")
    chainB = chain

    chain = chainBind(chainA, chainB)    

    chainA = chain
    load("./3.RData")
    chainB = chain

    chain = chainBind(chainA, chainB)    
    
    save(chain, file = "./all.RData")
}

list = "NSU"

setwd(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/", sep = ""))

load("./1.RData")
chainA = chain
load("./2.RData")
chainB = chain

chain = chainBind(chainA, chainB)    

chainA = chain
load("./3.RData")
chainB = chain

chain = chainBind(chainA, chainB)    

save(chain, file = "./all.RData")

