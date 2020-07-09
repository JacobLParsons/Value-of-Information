load(file = "Loss.RData")

selections = apply(test.loss, MARGIN = c(1,2), FUN = which.min)

save(list = c("selections"), file = "selections.RData")


