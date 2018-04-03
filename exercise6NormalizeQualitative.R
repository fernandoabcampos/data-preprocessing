
library(stringr)

#region_table <- table(gsub("AFRCA", "AFRICA", trimws(gsub("\\s+", " ", df$Region))))
#region_table
#?str_to_upper()
#table(df$Country)
df$Country <- gsub(" And ", " and ", str_to_title(df$Country))
df$Region <- gsub(" And ", " and ", str_to_title(gsub("AFRCA", "AFRICA", trimws(gsub("\\s+", " ", str_to_upper(df$Region))))))
table(df$Region)
#table(df$Country)

#country_table <- table(str_to_title(df$Country))
#country_table

#table(str_to_upper(df$Region))


