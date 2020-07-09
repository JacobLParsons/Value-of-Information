setwd("/storage/home/jlp592/work/RevisedUkraine/Prospective2")

for(list in 1:8)
{

    load("./tables.RData")

    table1 = cbind(table1[,,list,1], table1[,,list + 8,1], table1[,,list,2], table1[,,list + 8,2] )

    save(list = c("table1", "table2", "table3"), file = paste("./", list ,"/tables.RData", sep = "") )
    
}

list = 9

load("./tables.RData")

table1 = cbind(table1[,,list,1], table1[,,list,2])

save(list = c("table1", "table2", "table3"), file = paste("./NSU/tables.RData", sep = "") )

### Second Set of Tables

for(list in 1:8)
{

    load("./tables2.RData")

    table1 = cbind(table1[,,list,1], table1[,,list + 8,1], table1[,,list,2], table1[,,list + 8,2] )

    save(list = c("table1", "table2", "table3"), file = paste("./", list ,"/tables2.RData", sep = "") )
    
}

list = 9

load("./tables2.RData")

table1 = cbind(table1[,,list,1], table1[,,list,2])

save(list = c("table1", "table2", "table3"), file = paste("./NSU/tables2.RData", sep = "") )


### Third Set of Tables

for(list in 1:8)
{

    load("./tables3.RData")

    table1 = cbind(table1[,,list,1], table1[,,list + 8,1], table1[,,list,2], table1[,,list + 8,2] )

    save(list = c("table1", "table2", "table3"), file = paste("./", list ,"/tables3.RData", sep = "") )
    
}

list = 9

load("./tables3.RData")

table1 = cbind(table1[,,list,1], table1[,,list,2])

save(list = c("table1", "table2", "table3"), file = paste("./NSU/tables3.RData", sep = "") )
