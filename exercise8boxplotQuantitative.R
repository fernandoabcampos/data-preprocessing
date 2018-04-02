# boxplot for each quatitative variable
str(df)

# $ HS        : num  7.53 7.51 7.5 7.5 7.41 ...
# $ LCI       : num  7.46 7.43 7.33 7.42 7.35 ...
# $ UCI       : num  7.59 7.59 7.67 7.58 7.47 ...
# $ GPC       : num  1.44 1.53 1.43 1.58 1.41 ...
# $ Family    : num  1.16 1.15 NA 1.13 1.13 ...
# $ LE        : num  0.795 0.863 0.867 0.796 0.811 ...
# $ Freedom   : num  0.579 0.586 0.566 0.596 0.571 ...
# $ GC        : num  0.445 0.412 0.15 0.358 0.41 ...
# $ Generosity: num  0.362 0.281 0.477 0.379 0.255 ...
# $ DR        : num  2.74 2.69 2.83 2.66 2.83 ...
library(psych)
boxplot(df$HS, main="Happiness Score")
boxplot(df$LCI, main="Lower Confidence Interv.")
boxplot(df$UCI, main="Upper Confidence Interv.")
boxplot(df$GPC, main="GDP per Capita")
boxplot(df$Family, main="Family")
boxplot(df$LE, main="Life Expectancy")
boxplot(df$Freedom, main="Freedom")
boxplot(df$GC, main="Government Corruption")
boxplot(df$Generosity, main="Generosity")
boxplot(df$DR, main="Dystopia Residual")


boxplot.stats(df$GC)


mean(df$HS)
median(df$HS)
mean(df$HS, trim = 0.05)
winsor.mean(df$HS, trim = 0.05)
sd(df$HS)
IQR(df$HS)
mad(df$HS)

mean(df$LCI)
median(df$LCI)
mean(df$LCI, trim = 0.05)
winsor.mean(df$LCI, trim = 0.05)
sd(df$LCI)
IQR(df$LCI)
mad(df$LCI)

mean(df$UCI)
median(df$UCI)
mean(df$UCI, trim = 0.05)
winsor.mean(df$UCI, trim = 0.05)
sd(df$UCI)
IQR(df$UCI)
mad(df$UCI)

mean(df$GPC)
median(df$GPC)
mean(df$GPC, trim = 0.05)
winsor.mean(df$GPC, trim = 0.05)
sd(df$GPC)
IQR(df$GPC)
mad(df$GPC)

mean(df$Family, na.rm = TRUE)
median(df$Family, na.rm = TRUE)
mean(df$Family, trim = 0.05, na.rm = TRUE)
winsor.mean(df$Family, trim = 0.05)
sd(df$Family, na.rm = TRUE)
IQR(df$Family, na.rm = TRUE)
mad(df$Family, na.rm = TRUE)

mean(df$LE)
median(df$LE)
mean(df$LE, trim = 0.05)
winsor.mean(df$LE, trim = 0.05)
sd(df$LE)
IQR(df$LE)
mad(df$LE)


mean(df$Freedom)
median(df$Freedom)
mean(df$Freedom, trim = 0.05)
winsor.mean(df$Freedom, trim = 0.05)
sd(df$Freedom)
IQR(df$Freedom)
mad(df$Freedom)

mean(df$Generosity)
median(df$Generosity)
mean(df$Generosity, trim = 0.05)
winsor.mean(df$Generosity, trim = 0.05)
sd(df$Generosity)
IQR(df$Generosity)
mad(df$Generosity)

mean(df$GC)
median(df$GC)
mean(df$GC, trim = 0.05)
winsor.mean(df$GC, trim = 0.05)
sd(df$GC)
IQR(df$GC)
mad(df$GC)

mean(df$DR)
median(df$DR)
mean(df$DR, trim = 0.05)
winsor.mean(df$DR, trim = 0.05)
sd(df$DR)
IQR(df$DR)
mad(df$DR)



