region_table <- table(gsub("AFRCA", "AFRICA", trimws(gsub("\\s+", " ", df$Region))))
region_table

table(df$Country)
df$Region <- gsub("AFRCA", "AFRICA", trimws(gsub("\\s+", " ", df$Region)))
country_table <- table(df$Country)
country_table

table(df$Region)