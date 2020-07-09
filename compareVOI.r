load(file = "compare.RData")
library(mgcv)

X = scale(table1)
Y = scale(table2)[,target]

data = data.frame(X,Y)
colnames(data) = c(paste("X", 1:dim(table1)[2], sep = ""), "Y1")

pred.lin = predict(fit.lin, data)
pred.gam = predict.gam(fit.gam, data)

VOI.lin = var(table2[,target])*var(pred.lin)
VOI.gam = var(table2[,target])*var(pred.gam)

save.image(file = "compareVOI.RData")
