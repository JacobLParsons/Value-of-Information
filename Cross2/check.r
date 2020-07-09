setwd("/storage/work/j/jlp592/RevisedUkraine/CrossValidation2/")
load("./ann1.RData")

library(neuralnet)

png("./plots/comp.png")

fitted1 = predict(fit1, newdata = data)
fitted2 = predict(fit2, newdata = data)
    
plot(fitted1, fitted2)

dev.off()
