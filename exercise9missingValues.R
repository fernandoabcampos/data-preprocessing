#install.packages("VIM")
library(VIM)
df <- suppressWarnings(kNN(df, variable = c("Family"), k = 6))
drops <- c("Family_imp")
df <- df[ , !(names(df) %in% drops)]
head(df)

#unlist(lapply(df, function(x) any(is.na(x))))



