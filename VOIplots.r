load("CrossValidation2/VOILists.RData")
source("./LoadData.r")

data = LoadData()

setwd("./VOIPlots-sources/")

lists = dimnames(data$phat)[[2]]
sites = dimnames(data$phat)[[1]]
years = dimnames(data$phat)[[3]]

EVOIR = RVSI/EVSI

setEPS()
postscript("theta.eps", height = 3, width = 8)

# Retrospective Plots
#png(filename = "theta.png") 
par(mfrow=c(1,2),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex = .45)

groups = factor(c(lists,"NSU"), levels = c(lists,"NSU")[order(RVSI[,1])])

plot( RVSI[,1] ~ groups,main ="Retrospective Value for Estimating Theta", ylab = NA , xlab = NA)


f = function(x,y)
{
 return(x*y) 
}


x = 1:3600/10000000
y = 1:160/100
z = outer(x, y)

plot( EVOIR[,1] ~ EVSI[,1] ,main ="EVOIR vs Expected Value for Estimating Theta", ylab = NA , xlab = NA)
contour( x, y, z, add = TRUE, nlevels = 10, labcex = .5 )


int = which(EVOIR[,1] > 1)

int.y = (EVOIR[,1])[int]
int.x =  (EVSI[,1])[int]

text(x = int.x,y = int.y ,labels=lists[int], pos = 2)


dev.off()


setEPS()
postscript("mu.eps", height = 3, width = 8)

par(mfrow=c(1,2),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex = .45)

groups = factor(c(lists), levels = c(lists)[order(RVSI[-8,2])])

plot( RVSI[-8,2] ~ groups,main ="Retrospective Value for Estimating Theta", ylab = NA , xlab = NA)

x = 1:330/1000000
y = 1:310/100
z = outer(x, y)

plot( EVOIR[-8,2] ~ EVSI[-8,2],main = "EVOIR vs Expected Value for Estimating Mu", ylab = NA )

contour( x, y, z, add = TRUE, nlevels = 20, labcex = .5 )

int = which(EVOIR[-8,2] > 2)

int.y = (EVOIR[-8,2])[int]
int.x =  (EVSI[-8,2])[int]

text(x = int.x,y = int.y ,labels=lists[int], pos = 1)

dev.off()



setEPS()
postscript("pi2.eps", height = 5, width = 8)
#png(filename = "pi.png") 
par(mfrow=c(2,2),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex=.5)

plot( (RVSI[,3]) ~ factor(c(lists, "NSU")),main ="Retrospective Value for Estimating 2007 Prevalence", ylab = NA , xlab=NA)

plot( (RVSI[,4]) ~ factor(c(lists, "NSU")),main ="Retrospective Value for Estimating 2008 Prevalence", ylab = NA , xlab=NA)

plot( (RVSI[,5]) ~ factor(c(lists, "NSU")),main ="Retrospective Value for Estimating 2009 Prevalence", ylab = NA , xlab=NA)

plot( (RVSI[,6]) ~ factor(c(lists, "NSU")),main ="Retrospective Value for Estimating 2010 Prevalence", ylab = NA , xlab=NA)

dev.off()



setEPS()
postscript("pi2.eps", height = 5, width = 8)
#png(filename = "pi2.png") 
par(mfrow=c(2,2),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex=.5)

plot( (RVSI[,9]) ~ factor(c(lists, "NSU")),main ="Retrospective Value for Estimating 2013 Prevalence", ylab = NA , xlab=NA)

plot( (RVSI[,10]) ~ factor(c(lists, "NSU")),main ="Retrospective Value for Estimating 2014 Prevalence", ylab = NA , xlab=NA)

plot( (RVSI[,11]) ~ factor(c(lists, "NSU")),main ="Retrospective Value for Estimating 2015 Prevalence", ylab = NA , xlab=NA)

plot( rowSums(RVSI[,3:11]) ~ factor(c(lists, "NSU")),main ="Total Retrospective Value for Estimating Prevalence", ylab = NA , xlab=NA)

dev.off()



setEPS()
postscript("pi3.eps", height = 5, width = 8)
#png(filename = "pi3.png") 
par(mfrow=c(2,2),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex=.5)
#######################################################################################
#######################################################################################
#######################################################################################

x = 0:700/1000
y = 0:360/100
z = outer(x, y)

plot( EVOIR[,3] ~ EVSI[,3],main ="EVOIR vs Expected Value for Estimating Prevalence in 2007", ylab = NA )

contour( x, y, z, add = TRUE, nlevels = 20, labcex = .5 )

int = EVOIR[,3] > 1.5

int.y = EVOIR[,3][int]
int.x =  EVSI[,3][int]

text(x = int.x,y = int.y ,labels=c(lists,"NSU")[int], pos = 1)

#######################################################################################
#######################################################################################
#######################################################################################


x = 1:2700/100000
y = 0:360/100
z = outer(x, y)

plot( EVOIR[,4] ~ EVSI[,4],main ="EVOIR vs Expected Value for Estimating Prevalence in 2008", ylab = NA )

contour( x, y, z, add = TRUE, nlevels = 10, labcex = .5 )

int = EVOIR[,4] > 2

int.y = EVOIR[,4][int]
int.x =  EVSI[,4][int]

text(x = int.x,y = int.y ,labels=c(lists,"NSU")[int], pos = 1)


#######################################################################################
#######################################################################################
#######################################################################################


x = 1:100/1000   
y = 0:350/100
z = outer(x, y)

plot( EVOIR[,5] ~ EVSI[,5],main ="EVOIR vs Expected Value for Estimating Prevalence in 2009", ylab = NA )

contour( x, y, z, add = TRUE, nlevels = 10, labcex = .5 )

int = EVOIR[,5] > 1

int.y = EVOIR[,5][int]
int.x =  EVSI[,5][int]

text(x = int.x,y = int.y ,labels=c(lists,"NSU")[int], pos = 1)


#######################################################################################
#######################################################################################
#######################################################################################


x = 1:1000/10000000
y = 0:550/100
z = outer(x, y)

plot( EVOIR[,6] ~ EVSI[,6],main ="EVOIR vs Expected Value for Estimating Prevalence in 2010", ylab = NA )

contour( x, y, z, add = TRUE, nlevels = 10, labcex = .5 )

int = EVOIR[,6] > 1

int.y = EVOIR[,6][int]
int.x =  EVSI[,6][int]

text(x = int.x,y = int.y ,labels=c(lists,"NSU")[int], pos = 1)


#######################################################################################
#######################################################################################
#######################################################################################

dev.off()



setEPS()
postscript("pi4.eps", height = 5, width = 8)
#png(filename = "pi3.png") 
par(mfrow=c(2,2),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex=.5)
#######################################################################################
#######################################################################################
#######################################################################################

available = c(!apply(is.na(data$phat[,,6]), MARGIN = 2, FUN = all),

x = 1:2100/1000
y = 0:3000/1000
z = outer(x, y)

plot( EVOIR[,9] ~ EVSI[,9],main ="EVOIR vs Expected Value for Estimating Prevalence in 2012", ylab = NA, xlab = "Expected Value of Information" )

contour( x, y, z, add = TRUE, nlevels = 20, labcex = .5 )

int = EVOIR[,9] > 1.5

int.y = EVOIR[,9][int]
int.x =  EVSI[,9][int]

text(x = int.x,y = int.y ,labels=c(lists,"NSU")[int], pos = 1)

#######################################################################################
#######################################################################################
#######################################################################################

x = 1:2800/10000000
y = 0:500/100
z = outer(x, y)

plot( EVOIR[,10] ~ EVSI[,10],main ="EVOIR vs Expected Value for Estimating Prevalence in 2013", ylab = NA , xlab = "Expected Value of Information")

contour( x, y, z, add = TRUE, nlevels = 10, labcex = .5 )

int = EVOIR[,10] > 2

int.y = EVOIR[,10][int]
int.x =  EVSI[,10][int]

text(x = int.x,y = int.y ,labels=c(lists,"NSU")[int], pos = 1)

#######################################################################################
#######################################################################################
#######################################################################################

x = 1:700/1000000
y = 0:600/100
z = outer(x, y)

plot( EVOIR[,11] ~ EVSI[,11],main ="EVOIR vs Expected Value for Estimating Prevalence in 2015", ylab = NA, xlab = "Expected Value of Information")

contour( x, y, z, add = TRUE, nlevels = 10, labcex = .5 )

int = EVOIR[,11] > 1

int.y = EVOIR[,11][int]
int.x =  EVSI[,11][int]

text(x = int.x,y = int.y ,labels=c(lists,"NSU")[int], pos = 1)

#######################################################################################
#######################################################################################
#######################################################################################


x = 1:670/1000
y = 0:1800/1000
z = outer(x, y)

plot( rowSums(RVSI[,3:11])/rowSums(EVSI[,3:11]) ~ rowSums(EVSI[,3:11]),main ="EVOIR vs Expected Value for Estimating Prevalence", ylab = NA, xlab = "Expected Value of Information" )

contour( x, y, z, add = TRUE, nlevels = 10, labcex = .5 )

int = (rowSums(RVSI[,3:11])/rowSums(EVSI[,3:11])) > 1.1

int.y = (rowSums(RVSI[,3:11])/rowSums(EVSI[,3:11]))[int]
int.x =  rowSums(EVSI[,3:11])[int]

text(x = int.x,y = int.y ,labels=c(lists,"NSU")[int], pos = 1)


#######################################################################################
#######################################################################################
#######################################################################################

dev.off()


png(filename = "smt.png")
par(mfrow=c(2,2),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex=.5)
plot(data$phat[,3,], data$Y[,3,]) .3
plot(data$phat[,2,], data$Y[,2,])
plot(data$phat[,6,], data$Y[,6,])

dev.off()

load("../results/all.RData")
RateEstimates1 = colMeans(chain$pi)

load("../CrossValidation2/4/all.RData")
RateEstimates2 = colMeans(chain$pi)

png(filename="./RateEstimates.png")
par(mfrow=c(1,2),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex=.5)
plot(RateEstimates1[1,], type="l", ylim = c(0, .15), main = "Population Prevalence Estimates Over Time - Full Data", ylab = "Rate Estimate", xlab = "Time")
        
for(i in 2:25)
{
  lines(RateEstimates1[i,], type="l")
}

plot(RateEstimates2[1,], type="l", ylim = c(0, .15), main = "Population Prevalence Estimates Over Time - NGO Removed", ylab = "Rate Estimate", xlab = "Time")
        
for(i in 2:25)
{
  lines(RateEstimates2[i,], type="l")
}


dev.off()

## By sites

setwd("../")
load("CrossValidation/VOISites.RData")
load("CrossValidation/estimates.RData")
source("./LoadData.r")

data = LoadData()

setwd("./VOIPlots-sites/")

lists = dimnames(data$phat)[[2]]
sites = dimnames(data$phat)[[1]]
years = dimnames(data$phat)[[3]]

setEPS()
postscript("site.eps", height = 4, width = 4)

par(mfrow=c(1,1),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex = .45)

x = 1:2570/100000
y = 0:370/100
z = outer(x, y)

plot( rowSums(RVSI[,3:11])/rowSums(EVSI[,3:11]) ~ rowSums(EVSI[,3:11]),main ="EVOIR vs Expected Value for Estimating Prevalence", ylab = NA )

contour( x, y, z, add = TRUE, nlevels = 20, labcex = .5 )

int = (rowSums(RVSI[,3:11])/rowSums(EVSI[,3:11])) > 2

int.y = (rowSums(RVSI[,3:11])/rowSums(EVSI[,3:11]))[int]
int.x =  rowSums(EVSI[,3:11])[int]

text(x = int.x,y = int.y ,labels=sites[int], pos = 1)

dev.off()

### Prospective

temp = new.env()

load("../Prospective/VOILists.RData", env = temp)

EVSI = temp$EVSI



setEPS()
postscript("prospective.eps", height = 4, width = 4)

par(mfrow=c(1,1),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex = .45)

groups = factor(c(lists, "New", "NSU"), levels = c(lists, "New", "NSU")[order(EVSI[,3])])
plot( EVSI[,3] ~ groups,main ="Prevalence", ylab = NA , xlab = NA, ylim = c(0,.3))

dev.off()

load("../Prospective/VOIMethods.RData", env = temp)

setEPS()
postscript("prospective2.eps", height = 4, width = 5)

par(mfrow=c(1,1),  lwd=.9,mex=0.5, mai=c(0.3,0.6,0.3,0.3), las = 1,cex = .45)

EVSI = rowSums(temp$EVSI)[-8]

methods = c(lists, "NSU", "Median", "Adjusted")

groups = factor(methods, levels = methods[order(EVSI)])
plot( EVSI ~ groups,main ="Prevalence", ylab = NA , xlab = NA)

dev.off()
