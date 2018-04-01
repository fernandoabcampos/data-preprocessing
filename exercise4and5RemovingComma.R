sapply(df, class)
dim(df)
lapply(df, class)
str(df)

df$HS <- as.numeric(gsub(",", ".", df$HS))
df$GPC <- as.numeric(gsub(",", ".", df$GPC))


df$LCI <- as.numeric(gsub(",", ".", df$LCI))
df$UCI <- as.numeric(gsub(",", ".", df$UCI))
df$LE <- as.numeric(gsub(",", ".", df$LE))
df$Family <- as.numeric(gsub(",", ".", df$Family))
df$Freedom <- as.numeric(gsub(",", ".", df$Freedom))
df$GC <- as.numeric(gsub(",", ".", df$GC))
df$Generosity <- as.numeric(gsub(",", ".", df$Generosity))
df$DR <- as.numeric(gsub(",", ".", df$DR))



drops <- c("LE2","Family2","GC2","Freedom2","Generosity2","DR2")
df <- df[ , !(names(df) %in% drops)]











HS2