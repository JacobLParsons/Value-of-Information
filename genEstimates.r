setwd("/storage/home/jlp592/work/RevisedUkraine/")

library(tensorflow)
library(tfestimators)
source("./LoadData.r")

dropouts = c(.1, .5)

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
    tf$feature_column$numeric_column("X46")
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
    tf$feature_column$numeric_column("X90")
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
    tf$feature_column$numeric_column("X104")
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
    tf$feature_column$numeric_column("X42")
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
    tf$feature_column$numeric_column("X132"),
    tf$feature_column$numeric_column("X133"),
    tf$feature_column$numeric_column("X134"),
    tf$feature_column$numeric_column("X135"),
    tf$feature_column$numeric_column("X136")
)

input_columns[[7]] = feature_columns(
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
    tf$feature_column$numeric_column("X82")
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
    tf$feature_column$numeric_column("X24")
)

size = c(100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100)


RVSI = array(NA, dim = c(8, 11) )

for(list in 1:8)
{
    source("./LoadData.r")
    source("./MCMC.r")

    temp = new.env()

    if(list < 8)
    {
        load(file = paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/tables.RData", sep = ""), envir = temp )
    }
    
    if(list == 8)
    {
        load(file = paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", "NSU", "/tables.RData", sep = ""), envir = temp )
    }
    
    table1 = temp$table1
    table2 = temp$table2

    if(list < 8)
    {
        load(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", list, "/all.RData", sep = ""))
    }

    if(list == 8)
    {
        load(paste("/storage/home/jlp592/work/RevisedUkraine/CrossValidation2/", "NSU", "/all.RData", sep = ""))
    }

    estimates  = rep(NA, 11)
    estimates2 = rep(NA, 11)

    estimates2[1] = mean(chain$theta)
    estimates2[2] = mean(chain$mu)
    estimates2[3] = mean(digamma(chain$alpha0) - digamma(chain$beta0))
    estimates2[4] = estimates2[3]  + mean(chain$yearTrend[,2])
    estimates2[5] = estimates2[4] + mean(chain$yearTrend[,3])
    estimates2[6] = estimates2[5] + mean(chain$yearTrend[,4])
    estimates2[7] = estimates2[6] + mean(chain$yearTrend[,5])
    estimates2[8] = estimates2[7] + mean(chain$yearTrend[,6])
    estimates2[9] = estimates2[8] + mean(chain$yearTrend[,7])
    estimates2[10] = estimates2[9] + mean(chain$yearTrend[,8])
    estimates2[11] = estimates2[10] + mean(chain$yearTrend[,9])

    data = LoadData()
    data$logit = logit(data$phat)
    data$logit[is.infinite(data$logit)] = NA
    
    missingNSU = is.na(data$NSU)
    missingY = is.na(data$Y)
    missingLogit = is.na(data$logit)

    data$Y[missingY] = NA
    data$Y[missingLogit] = NA
    data$logit[missingY] = NA

    data$NSU[5,2] = NA
    data$NSU[9,2] = NA

    if(list < 8)
    {
        ystart = ncol(table1)/2 + 1
        yend = ncol(table1)

        table1[,ystart:yend] = log(table1[,ystart:yend]+1)
    }
    
    sd = apply(table1, MARGIN = 2, FUN=sd)
    mean = colMeans(table1)

    if(list < 8)
    {
        present = !is.na(data$logit[,list,])
        logits = data$logit[,list,]
        logits = logits[present]

        Y = data$Y[,list,]
        Y = log(Y[present] + 1)
        
        X = ( c(logits, Y) - mean)/sd
    }

    if(list == 8)
    {
        present = !is.na(data$NSU)
        X = log(data$NSU[present])

        X = ( X - mean)/sd
        
    }    

    dropout = .5

    inputs = function(data, num_epochs = 1) {
        input_fn(data, 
                 features = paste("X", 1:dim(table1)[2], sep = ""),
                 response = "Y1",
                 batch_size = 1,
                 num_epochs = num_epochs)
    }

    data = rbind(c(X, NA))
    colnames(data) = c(paste("X", 1:dim(table1)[2], sep = ""),"Y1")

    print(list)
    
    for(target in 1:11)
    {


        
        fit = dnn_regressor(size[ (2*list - 1):(2*list) ], feature_columns = input_columns[[list]], model_dir = paste("./", list, "/", target ,"/",dropout, "/", sep = ""), label_dimension = 1L, weight_column = NULL, optimizer = "Adagrad", activation_fn = "sigmoid", dropout = 0, input_layer_partitioner = NULL, config = NULL)

        prediction = fit %>% predict(inputs(data, 1) )
        prediction = vapply(c(1), function(x) {
            prediction$predictions[[x]]
        }, numeric(1))        
        
        estimates[target] = sd(table2[,target])*prediction + mean(table2[,target])
        
    }

    RVSI[list,] = (estimates - estimates2)^2
}


save(list = c("estimates", "estimates2", "RVSI"), file = "estimates.RData")
