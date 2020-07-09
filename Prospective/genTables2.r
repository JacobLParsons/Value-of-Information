setwd("/storage/home/jlp592/work/RevisedUkraine/Prospective")

for(list in 1:8)
{

    load("./tables.RData")

    table1 = cbind(table1[,,list], table1[,,list + 8])

    save(list = c("table1", "table2", "table3"), file = paste("./", list ,"/tables.RData", sep = "") )
    
}

list = 9

load("./tables.RData")

table1 = table1[,,list]

save(list = c("table1", "table2", "table3"), file = paste("./", list ,"/tables.RData", sep = "") )
