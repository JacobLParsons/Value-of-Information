setwd("/storage/home/jlp592/work/RevisedUkraine/Prospective")


### 12 Methods: 7 multiplier estimates, 1 NSU estimates, the median of multiplier estimates, the median of all estimates, median corrected estimate 
### 
EVSI = array(NA, dim = c(11, 27))

temp = new.env()
    
load(file = paste("/storage/home/jlp592/work/RevisedUkraine/Prospective/tables.RData", sep = ""), envir = temp )

table1 = temp$table1
table3 = temp$table3

temp2 = new.env()

load("../results/all.RData", envir=temp2)

N = log(table3[,4:30])
prior.estimates = colMeans(N)

prior.expected.loss = colMeans(  (N - matrix(prior.estimates,nrow = nrow(N), ncol = 27,byrow = TRUE))^2)

estimates = array(NA, dim = c(nrow(table1), 11,27) )
corrected.estimates = array(NA, dim = c(nrow(table1),8,27) )

theta = mean(table3[,1])
mu = mean(table3[,2])
gamma = colMeans(temp2$chain$gamma[-(10000:1000),])
delta = colMeans(temp2$chain$delta)

### Individual Multiplier Method
for(list in 1:7)
{
    for(site in 1:27)
    {

        estimates[,list,site] = log( (exp(table1[,site,list+8]) ) / invlogit(table1[,site,list] ) )
        
        corrected.estimates[,list,site]  = log( (exp(table1[,site,list+8]) ) / invlogit(table1[,site,list] - theta - gamma[list] - delta[site]) )

        
    }
    
}

### NSU estimate
estimates[,8,] = table1[,,17]
corrected.estimates[,8,] = table1[,,17] - mu

### Median Multiplier Estimate
### Median Total Estimate
### Mean Estimate

for(site in 1:27)
{
    estimates[,9,site] = apply(estimates[,1:7,site],MARGIN = 1, FUN = median)
    estimates[,10,site] = apply(estimates[,1:8,site],MARGIN = 1, FUN = median)
    estimates[,11,site] = apply(corrected.estimates[,,site],MARGIN = 1, FUN = mean)
    
}

expected.loss = array(NA, dim = c(11, 27))

for(site in 1:27)
{
    for(i in 1:11)
    {
        expected.loss[i,site] = mean( (estimates[,i,site] - N[,site])^2 )
        EVSI[i,site] = prior.expected.loss[site] - expected.loss[i,site] 
    }

}

save(list = c("EVSI"), file = "VOIMethods.RData")


