colnames(df)

colnames(df)[which(names(df) == "Happiness.Rank")] <- "HR"
colnames(df)[which(names(df) == "Happiness.Score")] <- "HS"
colnames(df)[which(names(df) == "Lower.Confidence.Interval")] <- "LCI"
colnames(df)[which(names(df) == "Upper.Confidence.Interval")] <- "UCI"
colnames(df)[which(names(df) == "GDP.per.Capita")] <- "GPC"
colnames(df)[which(names(df) == "Life.Expectancy")] <- "LE"
colnames(df)[which(names(df) == "Government.Corruption")] <- "GC"
colnames(df)[which(names(df) == "Dystopia.Residual")] <- "DR"

colnames(df)


