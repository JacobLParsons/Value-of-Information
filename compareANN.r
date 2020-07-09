library(tensorflow)
library(tfestimators)

setwd("/storage/home/jlp592/work/RevisedUkraine/")

input_columns = feature_columns(
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
    tf$feature_column$numeric_column("X54"),
    tf$feature_column$numeric_column("X55"),
    tf$feature_column$numeric_column("X56"),
    tf$feature_column$numeric_column("X57"),
    tf$feature_column$numeric_column("X58"),
    tf$feature_column$numeric_column("X59"),
    tf$feature_column$numeric_column("X60"),
    tf$feature_column$numeric_column("X61"),
    tf$feature_column$numeric_column("X62"),
    tf$feature_column$numeric_column("X63"),
    tf$feature_column$numeric_column("X64"),
    tf$feature_column$numeric_column("X65"),
    tf$feature_column$numeric_column("X66"),
    tf$feature_column$numeric_column("X67"),
    tf$feature_column$numeric_column("X68"),
    tf$feature_column$numeric_column("X69"),
    tf$feature_column$numeric_column("X70"),
    tf$feature_column$numeric_column("X71"),
    tf$feature_column$numeric_column("X72"),
    tf$feature_column$numeric_column("X73"),
    tf$feature_column$numeric_column("X74"),
    tf$feature_column$numeric_column("X75"),
    tf$feature_column$numeric_column("X76"),
    tf$feature_column$numeric_column("X77"),
    tf$feature_column$numeric_column("X78"),
    tf$feature_column$numeric_column("X79"),
    tf$feature_column$numeric_column("X80"),
    tf$feature_column$numeric_column("X81"),
    tf$feature_column$numeric_column("X82"),
    tf$feature_column$numeric_column("X83"),
    tf$feature_column$numeric_column("X84"),
    tf$feature_column$numeric_column("X85"),
    tf$feature_column$numeric_column("X86"),
    tf$feature_column$numeric_column("X87"),
    tf$feature_column$numeric_column("X88"),
    tf$feature_column$numeric_column("X89"),
    tf$feature_column$numeric_column("X90"),
    tf$feature_column$numeric_column("X91"),
    tf$feature_column$numeric_column("X92"),
    tf$feature_column$numeric_column("X93"),
    tf$feature_column$numeric_column("X94"),
    tf$feature_column$numeric_column("X95"),
    tf$feature_column$numeric_column("X96"),
    tf$feature_column$numeric_column("X97"),
    tf$feature_column$numeric_column("X98"),
    tf$feature_column$numeric_column("X99"),
    tf$feature_column$numeric_column("X100"),
    tf$feature_column$numeric_column("X101"),
    tf$feature_column$numeric_column("X102"),
    tf$feature_column$numeric_column("X103"),
    tf$feature_column$numeric_column("X104"),
    tf$feature_column$numeric_column("X105"),
    tf$feature_column$numeric_column("X106"),
    tf$feature_column$numeric_column("X107"),
    tf$feature_column$numeric_column("X108"),
    tf$feature_column$numeric_column("X109"),
    tf$feature_column$numeric_column("X110"),
    tf$feature_column$numeric_column("X111"),
    tf$feature_column$numeric_column("X112"),
    tf$feature_column$numeric_column("X113"),
    tf$feature_column$numeric_column("X114"),
    tf$feature_column$numeric_column("X115"),
    tf$feature_column$numeric_column("X116"),
    tf$feature_column$numeric_column("X117"),
    tf$feature_column$numeric_column("X118"),
    tf$feature_column$numeric_column("X119"),
    tf$feature_column$numeric_column("X120"),
    tf$feature_column$numeric_column("X121"),
    tf$feature_column$numeric_column("X122"),
    tf$feature_column$numeric_column("X123"),
    tf$feature_column$numeric_column("X124"),
    tf$feature_column$numeric_column("X125"),
    tf$feature_column$numeric_column("X126"),
    tf$feature_column$numeric_column("X127"),
    tf$feature_column$numeric_column("X128"),
    tf$feature_column$numeric_column("X129"),
    tf$feature_column$numeric_column("X130"),
    tf$feature_column$numeric_column("X131"),
    tf$feature_column$numeric_column("X132")
)

size = c(100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100)

list = 3
target = 3
dropout = .5

load(file = paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/tables.RData", sep = "") )

X = table1
ystart = ncol(X)/2 + 1
yend = ncol(X)

X[,ystart:yend] = log(X[,ystart:yend]+1)

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

fit = dnn_regressor(size[ (2*list - 1):(2*list) ], feature_columns = input_columns, model_dir = paste("./", list, "/", target ,"/",dropout, "/", sep = ""), label_dimension = 1L, weight_column = NULL, optimizer = "Adagrad", activation_fn = "sigmoid", dropout = dropout, input_layer_partitioner = NULL, config = NULL)

prediction = fit %>% predict(inputs(data, 1) )
prediction = vapply(1:4500, function(i) {
    prediction$predictions[[i]]
}, numeric(1))

test.loss.ann = var(table2[,target]) * mean((prediction - data$Y1)^2)

library(mgcv)


X = table1

X = scale(X)[train$model,]
print(target)
print(list)
Y = scale(table2)[train$model,target]

data = data.frame(X,Y)
colnames(data) = c(paste("X", 1:dim(table1)[2], sep = ""), "Y1")

print(Sys.time())

fit.gam = gam(Y1 ~ s(X1 ) + s( X2 ) + s( X3 ) + s( X4 ) + s( X5 ) + s( X6 ) + s( X7 ) + s( X8 ) + s( X9 ) + s( X10 ) + s( X11 ) + s( X12 ) + s( X13 ) + s( X14 ) + s( X15 ) + s( X16 ) + s( X17 ) + s( X18 ) + s( X19 ) + s( X20 ) + s( X21 ) + s( X22 ) + s( X23 ) + s( X24 ) + s( X25 ) + s( X26 ) + s( X27 ) + s( X28 ) + s( X29 ) + s( X30 ) + s( X31 ) + s( X32 ) + s( X33 ) + s( X34 ) + s( X35 ) + s( X36 ) + s( X37 ) + s( X38 ) + s( X39 ) + s( X40 ) + s( X41 ) + s( X42 ) + s( X43 ) + s( X44 ) + s( X45 ) + s( X46 ) + s( X47 ) + s( X48 ) + s( X49 ) + s( X50 ) + s( X51 ) + s( X52 ) + s( X53 ) + s( X54 ) + s( X55 ) + s( X56 ) + s( X57 ) + s( X58 ) + s( X59 ) + s( X60 ) + s( X61 ) + s( X62 ) + s( X63 ) + s( X64 ) + s( X65 ) + s( X66 ) + s( X67 ) + s( X68 ) + s( X69 ) + s( X70 ) + s( X71 ) + s( X72 ) + s( X73 ) + s( X74 ) + s( X75 ) + s( X76 ) + s( X77 ) + s( X78 ) + s( X79 ) + s( X80 ) + s( X81 ) + s( X82 ) + s( X83 ) + s( X84 ) + s( X85 ) + s( X86 ) + s( X87 ) + s( X88 ) + s( X89 ) + s( X90 ) + s( X91 ) + s( X92 ) + s( X93 ) + s( X94 ) + s( X95 ) + s( X96 ) + s( X97 ) + s( X98 ) + s( X99 ) + s( X100 ) + s( X101 ) + s( X102 ) + s( X103 ) + s( X104 ) + s( X105 ) + s( X106 ) + s( X107 ) + s( X108 ) + s( X109 ) + s( X110 ) + s( X111 ) + s( X112 ) + s( X113 ) + s( X114 ) + s( X115 ) + s( X116 ) + s( X117 ) + s( X118 ) + s( X119 ) + s( X120 ) + s( X121 ) + s( X122 ) + s( X123 ) + s( X124 ) + s( X125 ) + s( X126 ) + s( X127 ) + s( X128 ) + s( X129 ) + s( X130 ) + s( X131 ) + s( X132)  , data=data)

print(Sys.time())

X = table1

X = scale(X)[train$test,]
print(target)
print(list)
Y = scale(table2)[train$test,target]

data = data.frame(X,Y)
colnames(data) = c(paste("X", 1:dim(table1)[2], sep = ""), "Y1")

pred.gam = predict.gam(fit.gam, data)

test.loss.gam = var(table2[,target]) * mean((pred.gam - data$Y1)^2)

X = table1

X = scale(X)[train$model,]
print(target)
print(list)
Y = scale(table2)[train$model,target]

data = data.frame(X,Y)
colnames(data) = c(paste("X", 1:dim(table1)[2], sep = ""), "Y1")

print(Sys.time())

fit.lin = lm(Y1 ~ X1  +  X2  +  X3  +  X4  +  X5  +  X6  +  X7  +  X8  +  X9  +  X10  +  X11  +  X12  +  X13  +  X14  +  X15  +  X16  +  X17  +  X18  +  X19  +  X20  +  X21  +  X22  +  X23  +  X24  +  X25  +  X26  +  X27  +  X28  +  X29  +  X30  +  X31  +  X32  +  X33  +  X34  +  X35  +  X36  +  X37  +  X38  +  X39  +  X40  +  X41  +  X42  +  X43  +  X44  +  X45  +  X46  +  X47  +  X48  +  X49  +  X50  +  X51  +  X52  +  X53  +  X54  +  X55  +  X56  +  X57  +  X58  +  X59  +  X60  +  X61  +  X62  +  X63  +  X64  +  X65  +  X66  +  X67  +  X68  +  X69  +  X70  +  X71  +  X72  +  X73  +  X74  +  X75  +  X76  +  X77  +  X78  +  X79  +  X80  +  X81  +  X82  +  X83  +  X84  +  X85  +  X86  +  X87  +  X88  +  X89  +  X90  +  X91  +  X92  +  X93  +  X94  +  X95  +  X96  +  X97  +  X98  +  X99  +  X100  +  X101  +  X102  +  X103  +  X104  +  X105  +  X106  +  X107  +  X108  +  X109  +  X110  +  X111  +  X112  +  X113  +  X114  +  X115  +  X116  +  X117  +  X118  +  X119  +  X120  +  X121  +  X122  +  X123  +  X124  +  X125  +  X126  +  X127  +  Xp128  +  X129  +  X130  +  X131  +  X132  , data=data)

print(Sys.time())

X = table1

X = scale(X)[train$test,]
print(target)
print(list)
Y = scale(table2)[train$test,target]

data = data.frame(X,Y)
colnames(data) = c(paste("X", 1:dim(table1)[2], sep = ""), "Y1")

pred.lin = predict(fit.lin, data)

test.loss.lin = var(table2[,target]) * mean((pred.lin - data$Y1)^2)
save.image(file = "compare.RData")
