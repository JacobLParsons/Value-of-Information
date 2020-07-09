library(prospectr)
for(list in 1:9)
{
    setwd(paste("/storage/home/jlp592/work/RevisedUkraine/Prospective/",list ,"/",sep = "") )
    
    load("./tables.RData")

    print(dim(table1))
          
    train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal')
  
    save(list = c("table1", "table2", "table3", "train"), file = "./tables.RData" )

}
