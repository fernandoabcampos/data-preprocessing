df2 <- read.csv("~/Desktop/Master - Data Science/UOC/Estadística Avanzada/PECs/1-20180403/2016_raw.csv")
dfAux2 <- df2[df2$Lower.Confidence.Interval>df2$Upper.Confidence.Interval, ]
df2[df2$Lower.Confidence.Interval > df2$Upper.Confidence.Interval, c("Lower.Confidence.Interval", "Upper.Confidence.Interval")] <- df2[df2$Lower.Confidence.Interval > df2$Upper.Confidence.Interval, c("Upper.Confidence.Interval", "Lower.Confidence.Interval")]

#dfAux <- df[df$LCI>df$UCI, ]
#dfAux
#a <- dfAux$LCI
#b <- dfAux$UCI
#a = (b - a) + (b = a);
#dfAux2 <- dfAux
#dfAux2$LCI <- a
#dfAux2$UCI <- b
#dfAux2


df[df$LCI > df$UCI, c("LCI", "UCI")] <- df[df$LCI > df$UCI, c("UCI", "LCI")]

