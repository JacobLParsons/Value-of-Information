library(prospectr)

for(list in 1:7)
{
    setwd(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/", sep = ""))
    load("./all.RData")
    chainA = chain
    load("./1.RData")
    chainB = chain

    chain = chainBind(chainA, chainB)    
    save(chain, file = "./all.RData")
}
