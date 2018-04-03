# boxplot for each quatitative variable
str(df)

library(psych)
library(kableExtra)
library(knitr)

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


imprime_grafico <- function(my_data, caption_print) {
  colnames(my_data)[which(names(my_data) == "media_aritmetica")] <- "Media aritmética"
  colnames(my_data)[which(names(my_data) == "mediana")] <- "Mediana"
  colnames(my_data)[which(names(my_data) == "recortada")] <- "Media Recortada"
  colnames(my_data)[which(names(my_data) == "winsorizada")] <- "Media Winsorizada"
  colnames(my_data)[which(names(my_data) == "desviacion")] <- "Desviación estándar"
  kable(
    my_data
    , "html", caption = caption_print) %>%
    kable_styling(bootstrap_options = c("striped", "hover", "bordered")) %>%
    column_spec(1, background = "#ffd6d6") %>%
    column_spec(2:4, background = "#e5ffd6") %>%
    column_spec(5, background = "#ffd6d6") %>%
    column_spec(6:7, background = "#e5ffd6") %>%
    add_header_above(c("No Robusto" = 1, "Robusto" = 3, "No Robusto" = 1, "Robusto" = 2)) %>%
    add_header_above(c("Tendencia Central" = 4, "Dispersión" = 3)) 
}


media_aritmetica <- mean(df$HS)
mediana <- median(df$HS)
recortada <- mean(df$HS, trim = 0.05)
winsorizada <- winsor.mean(df$HS, trim = 0.05)
desviacion <- sd(df$HS)
RIC <- IQR(df$HS)
DAM <-mad(df$HS)
ex8 <- data.frame(media_aritmetica, mediana, recortada, winsorizada, desviacion, RIC, DAM)
imprime_grafico(ex8, "Happiness Score")

media_aritmetica <- mean(df$LCI)
mediana <- median(df$LCI)
recortada <- mean(df$LCI, trim = 0.05)
winsorizada <- winsor.mean(df$LCI, trim = 0.05)
desviacion <- sd(df$LCI)
RIC <- IQR(df$LCI)
DAM <-mad(df$LCI)
ex8 <- data.frame(media_aritmetica, mediana, recortada, winsorizada, desviacion, RIC, DAM)
imprime_grafico(ex8, "Lower Confidence Interval")

media_aritmetica <- mean(df$UCI)
mediana <- median(df$UCI)
recortada <- mean(df$UCI, trim = 0.05)
winsorizada <- winsor.mean(df$UCI, trim = 0.05)
desviacion <- sd(df$UCI)
RIC <- IQR(df$UCI)
DAM <-mad(df$UCI)
ex8 <- data.frame(media_aritmetica, mediana, recortada, winsorizada, desviacion, RIC, DAM)
imprime_grafico(ex8, "Upper Confidence Interval")

##########
media_aritmetica <- mean(df$GPC)
mediana <- median(df$GPC)
recortada <- mean(df$GPC, trim = 0.05)
winsorizada <- winsor.mean(df$GPC, trim = 0.05)
desviacion <- sd(df$GPC)
RIC <- IQR(df$GPC)
DAM <-mad(df$GPC)
ex8 <- data.frame(media_aritmetica, mediana, recortada, winsorizada, desviacion, RIC, DAM)
imprime_grafico(ex8, "GDP per Capita")

##########
media_aritmetica <- mean(df$Family, na.rm = TRUE)
mediana <- median(df$Family, na.rm = TRUE)
recortada <- mean(df$Family, trim = 0.05, na.rm = TRUE)
winsorizada <- winsor.mean(df$Family, trim = 0.05)
desviacion <- sd(df$Family, na.rm = TRUE)
RIC <- IQR(df$Family, na.rm = TRUE)
DAM <-mad(df$Family, na.rm = TRUE)
ex8 <- data.frame(media_aritmetica, mediana, recortada, winsorizada, desviacion, RIC, DAM)
imprime_grafico(ex8, "Family")

##########
media_aritmetica <- mean(df$LE)
mediana <- median(df$LE)
recortada <- mean(df$LE, trim = 0.05)
winsorizada <- winsor.mean(df$LE, trim = 0.05)
desviacion <- sd(df$LE)
RIC <- IQR(df$LE)
DAM <-mad(df$LE)
ex8 <- data.frame(media_aritmetica, mediana, recortada, winsorizada, desviacion, RIC, DAM)
imprime_grafico(ex8, "Life Expectancy")

##########
media_aritmetica <- mean(df$Freedom)
mediana <- median(df$Freedom)
recortada <- mean(df$Freedom, trim = 0.05)
winsorizada <- winsor.mean(df$Freedom, trim = 0.05)
desviacion <- sd(df$Freedom)
RIC <- IQR(df$Freedom)
DAM <-mad(df$Freedom)
ex8 <- data.frame(media_aritmetica, mediana, recortada, winsorizada, desviacion, RIC, DAM)
imprime_grafico(ex8, "Freedom")


##########
media_aritmetica <- mean(df$Generosity)
mediana <- median(df$Generosity)
recortada <- mean(df$Generosity, trim = 0.05)
winsorizada <- winsor.mean(df$Generosity, trim = 0.05)
desviacion <- sd(df$Generosity)
RIC <- IQR(df$Generosity)
DAM <-mad(df$Generosity)
ex8 <- data.frame(media_aritmetica, mediana, recortada, winsorizada, desviacion, RIC, DAM)
imprime_grafico(ex8, "Generosity")


##########
media_aritmetica <- mean(df$GC)
mediana <- median(df$GC)
recortada <- mean(df$GC, trim = 0.05)
winsorizada <- winsor.mean(df$GC, trim = 0.05)
desviacion <- sd(df$GC)
RIC <- IQR(df$GC)
DAM <-mad(df$GC)
ex8 <- data.frame(media_aritmetica, mediana, recortada, winsorizada, desviacion, RIC, DAM)
imprime_grafico(ex8, "Government Corruption")

##########
media_aritmetica <- mean(df$DR)
mediana <- median(df$DR)
recortada <- mean(df$DR, trim = 0.05)
winsorizada <- winsor.mean(df$DR, trim = 0.05)
desviacion <- sd(df$DR)
RIC <- IQR(df$DR)
DAM <-mad(df$DR)
ex8 <- data.frame(media_aritmetica, mediana, recortada, winsorizada, desviacion, RIC, DAM)
imprime_grafico(ex8, "Dystopia Residual")


