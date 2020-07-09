library(tensorflow)
library(tfestimators)

setwd("/storage/home/jlp592/work/RevisedUkraine/Prospective2/")


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
    tf$feature_column$numeric_column("X108")
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
    tf$feature_column$numeric_column("X108")
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
    tf$feature_column$numeric_column("X108")
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
    tf$feature_column$numeric_column("X104"),
    tf$feature_column$numeric_column("X105"),
    tf$feature_column$numeric_column("X106"),
    tf$feature_column$numeric_column("X107"),
    tf$feature_column$numeric_column("X108")
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
    tf$feature_column$numeric_column("X108")
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
    tf$feature_column$numeric_column("X108")
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
    tf$feature_column$numeric_column("X108")
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
    tf$feature_column$numeric_column("X108")
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

test.loss = array(NaN, dim = c(9, 4, 2))
test.loss2 = array(NaN, dim = c(9, 4, 2))
regressionCoef = array(NaN, dim = c(9, 4, 2))

targets = 1:4
dropouts = c(.1, .5)#(10:13)*.05

for(list in 1:9)
{

    print(list)
    
    load(file = paste("/storage/home/jlp592/work/RevisedUkraine/Prospective2/", list, "/tables.RData", sep = "") )
            
    for(i in 1:4 )
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


            fit = dnn_regressor(c(100,100), feature_columns = input_columns[[list]], model_dir = paste("./", list, "/1/", target ,"/",dropout, "/", sep = ""), label_dimension = 1L, weight_column = NULL, optimizer = "Adagrad", activation_fn = "sigmoid", dropout = dropout, input_layer_partitioner = NULL, config = NULL)
            
            prediction = fit %>% predict(inputs(data, 1) )
            prediction = vapply(1:4500, function(i) {
                prediction$predictions[[i]]
            }, numeric(1))

            test.loss[list,i,j] =  mean((prediction - data$Y1)^2) 
            
            fit.lin = lm(data$Y1~prediction)
            summary(fit.lin)

            regressionCoef[list,i,j] = fit.lin$coefficients[2]

            X = table1
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


            fit = dnn_regressor(c(100,100), feature_columns = input_columns[[list]], model_dir = paste("./", list, "/1/", target ,"/",dropout, "/", sep = ""), label_dimension = 1L, weight_column = NULL, optimizer = "Adagrad", activation_fn = "sigmoid", dropout = dropout, input_layer_partitioner = NULL, config = NULL)

            
            prediction = fit %>% predict(inputs(data, 1) )
            prediction = vapply(1:10500, function(i) {
                prediction$predictions[[i]]
            }, numeric(1))

            test.loss2[list,i,j] =  mean((prediction - data$Y1)^2) 


        }
    }
    
}

save.image(file = "./Loss.RData")


test.loss = array(NaN, dim = c(9, 4, 2))
test.loss2 = array(NaN, dim = c(9, 4, 2))
regressionCoef = array(NaN, dim = c(9, 4, 2))

targets = 1:4
dropouts = c(.1, .5)#(10:13)*.05

for(list in 1:9)
{
        
    load(file = paste("/storage/home/jlp592/work/RevisedUkraine/Prospective2/", list, "/tables2.RData", sep = "") )
            
    for(i in 1:4 )
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


            fit = dnn_regressor(c(100,100), feature_columns = input_columns[[list]], model_dir = paste("./", list, "/2/", target ,"/",dropout, "/", sep = ""), label_dimension = 1L, weight_column = NULL, optimizer = "Adagrad", activation_fn = "sigmoid", dropout = dropout, input_layer_partitioner = NULL, config = NULL)
            
            prediction = fit %>% predict(inputs(data, 1) )
            prediction = vapply(1:4500, function(i) {
                prediction$predictions[[i]]
            }, numeric(1))

            test.loss[list,i,j] =  mean((prediction - data$Y1)^2) 
            
            fit.lin = lm(data$Y1~prediction)
            summary(fit.lin)

            regressionCoef[list,i,j] = fit.lin$coefficients[2]

            X = table1
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


            fit = dnn_regressor(c(100,100), feature_columns = input_columns[[list]], model_dir = paste("./", list, "/2/", target ,"/",dropout, "/", sep = ""), label_dimension = 1L, weight_column = NULL, optimizer = "Adagrad", activation_fn = "sigmoid", dropout = dropout, input_layer_partitioner = NULL, config = NULL)

            
            prediction = fit %>% predict(inputs(data, 1) )
            prediction = vapply(1:10500, function(i) {
                prediction$predictions[[i]]
            }, numeric(1))

            test.loss2[list,i,j] =  mean((prediction - data$Y1)^2) 


        }
    }
    
}

save.image(file = "./Loss2.RData")

test.loss = array(NaN, dim = c(9, 4, 2))
test.loss2 = array(NaN, dim = c(9, 4, 2))
regressionCoef = array(NaN, dim = c(9, 4, 2))

targets = 1:4
dropouts = c(.1, .5)#(10:13)*.05

for(list in 1:9)
{
        
    load(file = paste("/storage/home/jlp592/work/RevisedUkraine/Prospective2/", list, "/tables3.RData", sep = "") )
            
    for(i in 1:4 )
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


            fit = dnn_regressor(c(100,100), feature_columns = input_columns[[list]], model_dir = paste("./", list, "/3/", target ,"/",dropout, "/", sep = ""), label_dimension = 1L, weight_column = NULL, optimizer = "Adagrad", activation_fn = "sigmoid", dropout = dropout, input_layer_partitioner = NULL, config = NULL)
            
            prediction = fit %>% predict(inputs(data, 1) )
            prediction = vapply(1:4500, function(i) {
                prediction$predictions[[i]]
            }, numeric(1))

            test.loss[list,i,j] =  mean((prediction - data$Y1)^2) 
            
            fit.lin = lm(data$Y1~prediction)
            summary(fit.lin)

            regressionCoef[list,i,j] = fit.lin$coefficients[2]

            X = table1
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


            fit = dnn_regressor(c(100,100), feature_columns = input_columns[[list]], model_dir = paste("./", list, "/3/", target ,"/",dropout, "/", sep = ""), label_dimension = 1L, weight_column = NULL, optimizer = "Adagrad", activation_fn = "sigmoid", dropout = dropout, input_layer_partitioner = NULL, config = NULL)

            
            prediction = fit %>% predict(inputs(data, 1) )
            prediction = vapply(1:10500, function(i) {
                prediction$predictions[[i]]
            }, numeric(1))

            test.loss2[list,i,j] =  mean((prediction - data$Y1)^2) 


        }
    }
    
}

save.image(file = "./Loss3.RData")
