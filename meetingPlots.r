load("CrossValidation2/VOILists2.RData")
load("estimates.RData")

EVOIR = RVSI/EVSI


f = function(x,y)
{
 return(x*y) 
}

x = 1:48/100
y = 0:360/100
z = outer(x, y)



png(filename="./plots/VOI1.png")
plot(EVSI, EVOIR, main = "VOI for Prevalence", xlab = "Prospective EVSI")
contour( x, y, z, add = TRUE, nlevels = 7, labcex = .7 )
text(x = c(EVSI[3]),y = c(EVOIR[3]) ,labels=c("Hospital"), pos = 2)
dev.off()

png(filename="./plots/VOI2.png")
plot(RVSI[,1] ~ factor(c("DTF","DTP","Hospitalization","NGO","Prevention","SMT","Survey")) , xlab = "Source", ylab = "Retrospective VOI")
dev.off()

