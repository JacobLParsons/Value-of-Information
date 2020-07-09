library(tensorflow)
library(tfestimators)

setwd("/storage/home/jlp592/work/RevisedUkraine/Prospective/")

input_columns = list()


input_columns[[1]] = feature_columns(
    tf$feature_column$numeric_column("X1"),
    tf$feature_column$numeric_column("X2"),
    tf$feature_column$numeric_column("X3"),
    tf$feature_column$numeric_column("X4"),
    tf$feature_column$numeric_column("X5"),
    tf$feature_column$numeric_column("X6"),
    tf$feature_column$numeric_column("X7"),
    tf$feature_column$numeric_column("X8"),
    tf$feature_column$numeric_column("X9"),
    tf$feature_column$numeric_column("X10"),
    tf$feature_column$numeric_column("X11"),
    tf$feature_column$numeric_column("X12"),
    tf$feature_column$numeric_column("X13"),
    tf$feature_column$numeric_column("X14"),
    tf$feature_column$numeric_column("X15"),
    tf$feature_column$numeric_column("X16"),
    tf$feature_column$numeric_column("X17"),
    tf$feature_column$numeric_column("X18"),
    tf$feature_column$numeric_column("X19"),
    tf$feature_column$numeric_column("X20"),
    tf$feature_column$numeric_column("X21"),
    tf$feature_column$numeric_column("X22"),
    tf$feature_column$numeric_column("X23"),
    tf$feature_column$numeric_column("X24"),
    tf$feature_column$numeric_column("X25"),
    tf$feature_column$numeric_column("X26"),
    tf$feature_column$numeric_column("X27"),
    tf$feature_column$numeric_column("X28"),
    tf$feature_column$numeric_column("X29"),
    tf$feature_column$numeric_column("X30"),
    tf$feature_column$numeric_column("X31"),
    tf$feature_column$numeric_column("X32"),
    tf$feature_column$numeric_column("X33"),
    tf$feature_column$numeric_column("X34"),
    tf$feature_column$numeric_column("X35"),
    tf$feature_column$numeric_column("X36"),
    tf$feature_column$numeric_column("X37"),
    tf$feature_column$numeric_column("X38"),
    tf$feature_column$numeric_column("X39"),
    tf$feature_column$numeric_column("X40"),
    tf$feature_column$numeric_column("X41"),
    tf$feature_column$numeric_column("X42"),
    tf$feature_column$numeric_column("X43"),
    tf$feature_column$numeric_column("X44"),
    tf$feature_column$numeric_column("X45"),
    tf$feature_column$numeric_column("X46"),
    tf$feature_column$numeric_column("X47"),
    tf$feature_column$numeric_column("X48"),
    tf$feature_column$numeric_column("X49"),
    tf$feature_column$numeric_column("X50"),
    tf$feature_column$numeric_column("X51"),
    tf$feature_column$numeric_column("X52"),
    tf$feature_column$numeric_column("X53"),
    tf$feature_column$numeric_column("X54")
)

input_columns[[2]] = feature_columns(
    tf$feature_column$numeric_column("X1"),
    tf$feature_column$numeric_column("X2"),
    tf$feature_column$numeric_column("X3"),
    tf$feature_column$numeric_column("X4"),
    tf$feature_column$numeric_column("X5"),
    tf$feature_column$numeric_column("X6"),
    tf$feature_column$numeric_column("X7"),
    tf$feature_column$numeric_column("X8"),
    tf$feature_column$numeric_column("X9"),
    tf$feature_column$numeric_column("X10"),
    tf$feature_column$numeric_column("X11"),
    tf$feature_column$numeric_column("X12"),
    tf$feature_column$numeric_column("X13"),
    tf$feature_column$numeric_column("X14"),
    tf$feature_column$numeric_column("X15"),
    tf$feature_column$numeric_column("X16"),
    tf$feature_column$numeric_column("X17"),
    tf$feature_column$numeric_column("X18"),
    tf$feature_column$numeric_column("X19"),
    tf$feature_column$numeric_column("X20"),
    tf$feature_column$numeric_column("X21"),
    tf$feature_column$numeric_column("X22"),
    tf$feature_column$numeric_column("X23"),
    tf$feature_column$numeric_column("X24"),
    tf$feature_column$numeric_column("X25"),
    tf$feature_column$numeric_column("X26"),
    tf$feature_column$numeric_column("X27"),
    tf$feature_column$numeric_column("X28"),
    tf$feature_column$numeric_column("X29"),
    tf$feature_column$numeric_column("X30"),
    tf$feature_column$numeric_column("X31"),
    tf$feature_column$numeric_column("X32"),
    tf$feature_column$numeric_column("X33"),
    tf$feature_column$numeric_column("X34"),
    tf$feature_column$numeric_column("X35"),
    tf$feature_column$numeric_column("X36"),
    tf$feature_column$numeric_column("X37"),
    tf$feature_column$numeric_column("X38"),
    tf$feature_column$numeric_column("X39"),
    tf$feature_column$numeric_column("X40"),
    tf$feature_column$numeric_column("X41"),
    tf$feature_column$numeric_column("X42"),
    tf$feature_column$numeric_column("X43"),
    tf$feature_column$numeric_column("X44"),
    tf$feature_column$numeric_column("X45"),
    tf$feature_column$numeric_column("X46"),
    tf$feature_column$numeric_column("X47"),
    tf$feature_column$numeric_column("X48"),
    tf$feature_column$numeric_column("X49"),
    tf$feature_column$numeric_column("X50"),
    tf$feature_column$numeric_column("X51"),
    tf$feature_column$numeric_column("X52"),
    tf$feature_column$numeric_column("X53"),
    tf$feature_column$numeric_column("X54")
)

input_columns[[3]] = feature_columns(
    tf$feature_column$numeric_column("X1"),
    tf$feature_column$numeric_column("X2"),
    tf$feature_column$numeric_column("X3"),
    tf$feature_column$numeric_column("X4"),
    tf$feature_column$numeric_column("X5"),
    tf$feature_column$numeric_column("X6"),
    tf$feature_column$numeric_column("X7"),
    tf$feature_column$numeric_column("X8"),
    tf$feature_column$numeric_column("X9"),
    tf$feature_column$numeric_column("X10"),
    tf$feature_column$numeric_column("X11"),
    tf$feature_column$numeric_column("X12"),
    tf$feature_column$numeric_column("X13"),
    tf$feature_column$numeric_column("X14"),
    tf$feature_column$numeric_column("X15"),
    tf$feature_column$numeric_column("X16"),
    tf$feature_column$numeric_column("X17"),
    tf$feature_column$numeric_column("X18"),
    tf$feature_column$numeric_column("X19"),
    tf$feature_column$numeric_column("X20"),
    tf$feature_column$numeric_column("X21"),
    tf$feature_column$numeric_column("X22"),
    tf$feature_column$numeric_column("X23"),
    tf$feature_column$numeric_column("X24"),
    tf$feature_column$numeric_column("X25"),
    tf$feature_column$numeric_column("X26"),
    tf$feature_column$numeric_column("X27"),
    tf$feature_column$numeric_column("X28"),
    tf$feature_column$numeric_column("X29"),
    tf$feature_column$numeric_column("X30"),
    tf$feature_column$numeric_column("X31"),
    tf$feature_column$numeric_column("X32"),
    tf$feature_column$numeric_column("X33"),
    tf$feature_column$numeric_column("X34"),
    tf$feature_column$numeric_column("X35"),
    tf$feature_column$numeric_column("X36"),
    tf$feature_column$numeric_column("X37"),
    tf$feature_column$numeric_column("X38"),
    tf$feature_column$numeric_column("X39"),
    tf$feature_column$numeric_column("X40"),
    tf$feature_column$numeric_column("X41"),
    tf$feature_column$numeric_column("X42"),
    tf$feature_column$numeric_column("X43"),
    tf$feature_column$numeric_column("X44"),
    tf$feature_column$numeric_column("X45"),
    tf$feature_column$numeric_column("X46"),
    tf$feature_column$numeric_column("X47"),
    tf$feature_column$numeric_column("X48"),
    tf$feature_column$numeric_column("X49"),
    tf$feature_column$numeric_column("X50"),
    tf$feature_column$numeric_column("X51"),
    tf$feature_column$numeric_column("X52"),
    tf$feature_column$numeric_column("X53"),
    tf$feature_column$numeric_column("X54")
)

input_columns[[4]] = feature_columns(
    tf$feature_column$numeric_column("X1"),
    tf$feature_column$numeric_column("X2"),
    tf$feature_column$numeric_column("X3"),
    tf$feature_column$numeric_column("X4"),
    tf$feature_column$numeric_column("X5"),
    tf$feature_column$numeric_column("X6"),
    tf$feature_column$numeric_column("X7"),
    tf$feature_column$numeric_column("X8"),
    tf$feature_column$numeric_column("X9"),
    tf$feature_column$numeric_column("X10"),
    tf$feature_column$numeric_column("X11"),
    tf$feature_column$numeric_column("X12"),
    tf$feature_column$numeric_column("X13"),
    tf$feature_column$numeric_column("X14"),
    tf$feature_column$numeric_column("X15"),
    tf$feature_column$numeric_column("X16"),
    tf$feature_column$numeric_column("X17"),
    tf$feature_column$numeric_column("X18"),
    tf$feature_column$numeric_column("X19"),
    tf$feature_column$numeric_column("X20"),
    tf$feature_column$numeric_column("X21"),
    tf$feature_column$numeric_column("X22"),
    tf$feature_column$numeric_column("X23"),
    tf$feature_column$numeric_column("X24"),
    tf$feature_column$numeric_column("X25"),
    tf$feature_column$numeric_column("X26"),
    tf$feature_column$numeric_column("X27"),
    tf$feature_column$numeric_column("X28"),
    tf$feature_column$numeric_column("X29"),
    tf$feature_column$numeric_column("X30"),
    tf$feature_column$numeric_column("X31"),
    tf$feature_column$numeric_column("X32"),
    tf$feature_column$numeric_column("X33"),
    tf$feature_column$numeric_column("X34"),
    tf$feature_column$numeric_column("X35"),
    tf$feature_column$numeric_column("X36"),
    tf$feature_column$numeric_column("X37"),
    tf$feature_column$numeric_column("X38"),
    tf$feature_column$numeric_column("X39"),
    tf$feature_column$numeric_column("X40"),
    tf$feature_column$numeric_column("X41"),
    tf$feature_column$numeric_column("X42"),
    tf$feature_column$numeric_column("X43"),
    tf$feature_column$numeric_column("X44"),
    tf$feature_column$numeric_column("X45"),
    tf$feature_column$numeric_column("X46"),
    tf$feature_column$numeric_column("X47"),
    tf$feature_column$numeric_column("X48"),
    tf$feature_column$numeric_column("X49"),
    tf$feature_column$numeric_column("X50"),
    tf$feature_column$numeric_column("X51"),
    tf$feature_column$numeric_column("X52"),
    tf$feature_column$numeric_column("X53"),
    tf$feature_column$numeric_column("X54")
)

input_columns[[5]] = feature_columns(
    tf$feature_column$numeric_column("X1"),
    tf$feature_column$numeric_column("X2"),
    tf$feature_column$numeric_column("X3"),
    tf$feature_column$numeric_column("X4"),
    tf$feature_column$numeric_column("X5"),
    tf$feature_column$numeric_column("X6"),
    tf$feature_column$numeric_column("X7"),
    tf$feature_column$numeric_column("X8"),
    tf$feature_column$numeric_column("X9"),
    tf$feature_column$numeric_column("X10"),
    tf$feature_column$numeric_column("X11"),
    tf$feature_column$numeric_column("X12"),
    tf$feature_column$numeric_column("X13"),
    tf$feature_column$numeric_column("X14"),
    tf$feature_column$numeric_column("X15"),
    tf$feature_column$numeric_column("X16"),
    tf$feature_column$numeric_column("X17"),
    tf$feature_column$numeric_column("X18"),
    tf$feature_column$numeric_column("X19"),
    tf$feature_column$numeric_column("X20"),
    tf$feature_column$numeric_column("X21"),
    tf$feature_column$numeric_column("X22"),
    tf$feature_column$numeric_column("X23"),
    tf$feature_column$numeric_column("X24"),
    tf$feature_column$numeric_column("X25"),
    tf$feature_column$numeric_column("X26"),
    tf$feature_column$numeric_column("X27"),
    tf$feature_column$numeric_column("X28"),
    tf$feature_column$numeric_column("X29"),
    tf$feature_column$numeric_column("X30"),
    tf$feature_column$numeric_column("X31"),
    tf$feature_column$numeric_column("X32"),
    tf$feature_column$numeric_column("X33"),
    tf$feature_column$numeric_column("X34"),
    tf$feature_column$numeric_column("X35"),
    tf$feature_column$numeric_column("X36"),
    tf$feature_column$numeric_column("X37"),
    tf$feature_column$numeric_column("X38"),
    tf$feature_column$numeric_column("X39"),
    tf$feature_column$numeric_column("X40"),
    tf$feature_column$numeric_column("X41"),
    tf$feature_column$numeric_column("X42"),
    tf$feature_column$numeric_column("X43"),
    tf$feature_column$numeric_column("X44"),
    tf$feature_column$numeric_column("X45"),
    tf$feature_column$numeric_column("X46"),
    tf$feature_column$numeric_column("X47"),
    tf$feature_column$numeric_column("X48"),
    tf$feature_column$numeric_column("X49"),
    tf$feature_column$numeric_column("X50"),
    tf$feature_column$numeric_column("X51"),
    tf$feature_column$numeric_column("X52"),
    tf$feature_column$numeric_column("X53"),
    tf$feature_column$numeric_column("X54")
)

input_columns[[6]] = feature_columns(
    tf$feature_column$numeric_column("X1"),
    tf$feature_column$numeric_column("X2"),
    tf$feature_column$numeric_column("X3"),
    tf$feature_column$numeric_column("X4"),
    tf$feature_column$numeric_column("X5"),
    tf$feature_column$numeric_column("X6"),
    tf$feature_column$numeric_column("X7"),
    tf$feature_column$numeric_column("X8"),
    tf$feature_column$numeric_column("X9"),
    tf$feature_column$numeric_column("X10"),
    tf$feature_column$numeric_column("X11"),
    tf$feature_column$numeric_column("X12"),
    tf$feature_column$numeric_column("X13"),
    tf$feature_column$numeric_column("X14"),
    tf$feature_column$numeric_column("X15"),
    tf$feature_column$numeric_column("X16"),
    tf$feature_column$numeric_column("X17"),
    tf$feature_column$numeric_column("X18"),
    tf$feature_column$numeric_column("X19"),
    tf$feature_column$numeric_column("X20"),
    tf$feature_column$numeric_column("X21"),
    tf$feature_column$numeric_column("X22"),
    tf$feature_column$numeric_column("X23"),
    tf$feature_column$numeric_column("X24"),
    tf$feature_column$numeric_column("X25"),
    tf$feature_column$numeric_column("X26"),
    tf$feature_column$numeric_column("X27"),
    tf$feature_column$numeric_column("X28"),
    tf$feature_column$numeric_column("X29"),
    tf$feature_column$numeric_column("X30"),
    tf$feature_column$numeric_column("X31"),
    tf$feature_column$numeric_column("X32"),
    tf$feature_column$numeric_column("X33"),
    tf$feature_column$numeric_column("X34"),
    tf$feature_column$numeric_column("X35"),
    tf$feature_column$numeric_column("X36"),
    tf$feature_column$numeric_column("X37"),
    tf$feature_column$numeric_column("X38"),
    tf$feature_column$numeric_column("X39"),
    tf$feature_column$numeric_column("X40"),
    tf$feature_column$numeric_column("X41"),
    tf$feature_column$numeric_column("X42"),
    tf$feature_column$numeric_column("X43"),
    tf$feature_column$numeric_column("X44"),
    tf$feature_column$numeric_column("X45"),
    tf$feature_column$numeric_column("X46"),
    tf$feature_column$numeric_column("X47"),
    tf$feature_column$numeric_column("X48"),
    tf$feature_column$numeric_column("X49"),
    tf$feature_column$numeric_column("X50"),
    tf$feature_column$numeric_column("X51"),
    tf$feature_column$numeric_column("X52"),
    tf$feature_column$numeric_column("X53"),
    tf$feature_column$numeric_column("X54")
)

input_columns[[7]] =feature_columns(
    tf$feature_column$numeric_column("X1"),
    tf$feature_column$numeric_column("X2"),
    tf$feature_column$numeric_column("X3"),
    tf$feature_column$numeric_column("X4"),
    tf$feature_column$numeric_column("X5"),
    tf$feature_column$numeric_column("X6"),
    tf$feature_column$numeric_column("X7"),
    tf$feature_column$numeric_column("X8"),
    tf$feature_column$numeric_column("X9"),
    tf$feature_column$numeric_column("X10"),
    tf$feature_column$numeric_column("X11"),
    tf$feature_column$numeric_column("X12"),
    tf$feature_column$numeric_column("X13"),
    tf$feature_column$numeric_column("X14"),
    tf$feature_column$numeric_column("X15"),
    tf$feature_column$numeric_column("X16"),
    tf$feature_column$numeric_column("X17"),
    tf$feature_column$numeric_column("X18"),
    tf$feature_column$numeric_column("X19"),
    tf$feature_column$numeric_column("X20"),
    tf$feature_column$numeric_column("X21"),
    tf$feature_column$numeric_column("X22"),
    tf$feature_column$numeric_column("X23"),
    tf$feature_column$numeric_column("X24"),
    tf$feature_column$numeric_column("X25"),
    tf$feature_column$numeric_column("X26"),
    tf$feature_column$numeric_column("X27"),
    tf$feature_column$numeric_column("X28"),
    tf$feature_column$numeric_column("X29"),
    tf$feature_column$numeric_column("X30"),
    tf$feature_column$numeric_column("X31"),
    tf$feature_column$numeric_column("X32"),
    tf$feature_column$numeric_column("X33"),
    tf$feature_column$numeric_column("X34"),
    tf$feature_column$numeric_column("X35"),
    tf$feature_column$numeric_column("X36"),
    tf$feature_column$numeric_column("X37"),
    tf$feature_column$numeric_column("X38"),
    tf$feature_column$numeric_column("X39"),
    tf$feature_column$numeric_column("X40"),
    tf$feature_column$numeric_column("X41"),
    tf$feature_column$numeric_column("X42"),
    tf$feature_column$numeric_column("X43"),
    tf$feature_column$numeric_column("X44"),
    tf$feature_column$numeric_column("X45"),
    tf$feature_column$numeric_column("X46"),
    tf$feature_column$numeric_column("X47"),
    tf$feature_column$numeric_column("X48"),
    tf$feature_column$numeric_column("X49"),
    tf$feature_column$numeric_column("X50"),
    tf$feature_column$numeric_column("X51"),
    tf$feature_column$numeric_column("X52"),
    tf$feature_column$numeric_column("X53"),
    tf$feature_column$numeric_column("X54")
)
    
input_columns[[8]] = feature_columns(
    tf$feature_column$numeric_column("X1"),
    tf$feature_column$numeric_column("X2"),
    tf$feature_column$numeric_column("X3"),
    tf$feature_column$numeric_column("X4"),
    tf$feature_column$numeric_column("X5"),
    tf$feature_column$numeric_column("X6"),
    tf$feature_column$numeric_column("X7"),
    tf$feature_column$numeric_column("X8"),
    tf$feature_column$numeric_column("X9"),
    tf$feature_column$numeric_column("X10"),
    tf$feature_column$numeric_column("X11"),
    tf$feature_column$numeric_column("X12"),
    tf$feature_column$numeric_column("X13"),
    tf$feature_column$numeric_column("X14"),
    tf$feature_column$numeric_column("X15"),
    tf$feature_column$numeric_column("X16"),
    tf$feature_column$numeric_column("X17"),
    tf$feature_column$numeric_column("X18"),
    tf$feature_column$numeric_column("X19"),
    tf$feature_column$numeric_column("X20"),
    tf$feature_column$numeric_column("X21"),
    tf$feature_column$numeric_column("X22"),
    tf$feature_column$numeric_column("X23"),
    tf$feature_column$numeric_column("X24"),
    tf$feature_column$numeric_column("X25"),
    tf$feature_column$numeric_column("X26"),
    tf$feature_column$numeric_column("X27"),
    tf$feature_column$numeric_column("X28"),
    tf$feature_column$numeric_column("X29"),
    tf$feature_column$numeric_column("X30"),
    tf$feature_column$numeric_column("X31"),
    tf$feature_column$numeric_column("X32"),
    tf$feature_column$numeric_column("X33"),
    tf$feature_column$numeric_column("X34"),
    tf$feature_column$numeric_column("X35"),
    tf$feature_column$numeric_column("X36"),
    tf$feature_column$numeric_column("X37"),
    tf$feature_column$numeric_column("X38"),
    tf$feature_column$numeric_column("X39"),
    tf$feature_column$numeric_column("X40"),
    tf$feature_column$numeric_column("X41"),
    tf$feature_column$numeric_column("X42"),
    tf$feature_column$numeric_column("X43"),
    tf$feature_column$numeric_column("X44"),
    tf$feature_column$numeric_column("X45"),
    tf$feature_column$numeric_column("X46"),
    tf$feature_column$numeric_column("X47"),
    tf$feature_column$numeric_column("X48"),
    tf$feature_column$numeric_column("X49"),
    tf$feature_column$numeric_column("X50"),
    tf$feature_column$numeric_column("X51"),
    tf$feature_column$numeric_column("X52"),
    tf$feature_column$numeric_column("X53"),
    tf$feature_column$numeric_column("X54")
)

input_columns[[9]] = feature_columns(
    tf$feature_column$numeric_column("X1"),
    tf$feature_column$numeric_column("X2"),
    tf$feature_column$numeric_column("X3"),
    tf$feature_column$numeric_column("X4"),
    tf$feature_column$numeric_column("X5"),
    tf$feature_column$numeric_column("X6"),
    tf$feature_column$numeric_column("X7"),
    tf$feature_column$numeric_column("X8"),
    tf$feature_column$numeric_column("X9"),
    tf$feature_column$numeric_column("X10"),
    tf$feature_column$numeric_column("X11"),
    tf$feature_column$numeric_column("X12"),
    tf$feature_column$numeric_column("X13"),
    tf$feature_column$numeric_column("X14"),
    tf$feature_column$numeric_column("X15"),
    tf$feature_column$numeric_column("X16"),
    tf$feature_column$numeric_column("X17"),
    tf$feature_column$numeric_column("X18"),
    tf$feature_column$numeric_column("X19"),
    tf$feature_column$numeric_column("X20"),
    tf$feature_column$numeric_column("X21"),
    tf$feature_column$numeric_column("X22"),
    tf$feature_column$numeric_column("X23"),
    tf$feature_column$numeric_column("X24"),
    tf$feature_column$numeric_column("X25"),
    tf$feature_column$numeric_column("X26"),
    tf$feature_column$numeric_column("X27")
)

test.loss = array(NaN, dim = c(9, 3, 2))
test.loss2 = array(NaN, dim = c(9, 3, 2))
regressionCoef = array(NaN, dim = c(9, 3, 2))

targets = 1:3
dropouts = c(.1, .5)#(10:13)*.05

for(list in 1:9)
{
        
    load(file = paste("/storage/home/jlp592/work/RevisedUkraine/Prospective/", list, "/tables.RData", sep = "") )
            
    for(i in 1:3 )
    {
        target = i
        
        for(j in c(1,2))
        {
            dropout = dropouts[j]

            X = table1          
            X = scale(X)[train$test,]
            
            print(target)
            print(list)
            Y = scale(table2)[train$test,target]

            data = data.frame(X,Y)

            colnames(data) = c(paste("X", 1:dim(table1)[2], sep = ""), "Y1")
          
            inputs = function(data, num_epochs = 1) {
                input_fn(data, 
                         features = paste("X", 1:dim(table1)[2], sep = ""),
                         response = "Y1",
                         batch_size = 1,
                         num_epochs = num_epochs)
            }


            fit = dnn_regressor(c(100,100), feature_columns = input_columns[[list]], model_dir = paste("./", list, "/", target ,"/",dropout, "/", sep = ""), label_dimension = 1L, weight_column = NULL, optimizer = "Adagrad", activation_fn = "sigmoid", dropout = dropout, input_layer_partitioner = NULL, config = NULL)
            
            prediction = fit %>% predict(inputs(data, 1) )
            prediction = vapply(1:4500, function(i) {
                prediction$predictions[[i]]
            }, numeric(1))

            test.loss[list,i,j] =  mean((prediction - data$Y1)^2) 
            
            fit.lin = lm(data$Y1~prediction)
            summary(fit.lin)

            regressionCoef[list,i,j] = fit.lin$coefficients[2]

            X = table1
            ystart = ncol(X)/2 + 1
            yend = ncol(X)

            X[,ystart:yend] = log(X[,ystart:yend]+1)
     
            X = scale(X)[train$model,]
            print(target)
            print(list)
            Y = scale(table2)[train$model,target]

            data = data.frame(X,Y)

            colnames(data) = c(paste("X", 1:dim(table1)[2], sep = ""), "Y1")
          
            inputs = function(data, num_epochs = 1) {
                input_fn(data, 
                         features = paste("X", 1:dim(table1)[2], sep = ""),
                         response = "Y1",
                         batch_size = 1,
                         num_epochs = num_epochs)
            }


            fit = dnn_regressor(c(100,100), feature_columns = input_columns[[list]], model_dir = paste("./", list, "/", target ,"/",dropout, "/", sep = ""), label_dimension = 1L, weight_column = NULL, optimizer = "Adagrad", activation_fn = "sigmoid", dropout = dropout, input_layer_partitioner = NULL, config = NULL)

            
            prediction = fit %>% predict(inputs(data, 1) )
            prediction = vapply(1:10500, function(i) {
                prediction$predictions[[i]]
            }, numeric(1))

            test.loss2[list,i,j] =  mean((prediction - data$Y1)^2) 


        }
    }
    
}

save.image(file = "./Loss.RData")
