library(prospectr)

for(list in 1:7)
{
    setwd(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/", sep = ""))
    load("./tables.RData")

    print(dim(table1))
          
    train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal')

    save.image(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/tables.RData", sep = ""))

}

list = "NSU"

setwd(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/", sep = ""))
load("./tables.RData")

print(dim(table1))

train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal')

save.image(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/tables.RData", sep = ""))

