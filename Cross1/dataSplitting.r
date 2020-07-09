library(prospectr)
for(site in 1:27)
{
    setwd(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation/", site, "/", sep = ""))
    load("./tables.RData")

    print(dim(table1))
          
    train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal')#, pc = 5)
#    if(site == 27)
 #   {
  #      train = kenStone(table1, k = round(7*length(table1[,1])/10), metric = 'mahal', pc = 3)
   # }
  
    save.image(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation/", site, "/tables.RData", sep = ""))

}
