library(prospectr)
for(list in 1:8)
{
    setwd(paste("/storage/home/jlp592/work/RevisedUkraine/Prospective2/",list ,"/",sep = "") )
    
    load("./tables.RData")

    print(dim(table1))
          
    train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal')
  
    save(list = c("table1", "table2", "table3", "train"), file = "./tables.RData" )

}

list = "NSU"

setwd(paste("/storage/home/jlp592/work/RevisedUkraine/Prospective2/",list ,"/",sep = "") )

load("./tables.RData")

print(dim(table1))

train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal')

save(list = c("table1", "table2", "table3", "train"), file = "./tables.RData" )

                                        # Second Part
for(list in 1:8)
{
    setwd(paste("/storage/home/jlp592/work/RevisedUkraine/Prospective2/",list ,"/",sep = "") )
    
    load("./tables2.RData")

    print(dim(table1))
          
    train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal')
  
    save(list = c("table1", "table2", "table3", "train"), file = "./tables2.RData" )

}

list = "NSU"

setwd(paste("/storage/home/jlp592/work/RevisedUkraine/Prospective2/",list ,"/",sep = "") )

load("./tables2.RData")

print(dim(table1))

train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal')

save(list = c("table1", "table2", "table3", "train"), file = "./tables2.RData" )

                                        # Third Part
for(list in 1:8)
{
    setwd(paste("/storage/home/jlp592/work/RevisedUkraine/Prospective2/",list ,"/",sep = "") )
    
    load("./tables3.RData")

    print(dim(table1))
          
    train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal')
  
    save(list = c("table1", "table2", "table3", "train"), file = "./tables3.RData" )

}

list = "NSU"

setwd(paste("/storage/home/jlp592/work/RevisedUkraine/Prospective2/",list ,"/",sep = "") )

load("./tables3.RData")

print(dim(table1))

train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal')

save(list = c("table1", "table2", "table3", "train"), file = "./tables3.RData" )
