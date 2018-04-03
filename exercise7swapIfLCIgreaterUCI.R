
df[df$LCI > df$UCI, c("LCI", "UCI")] <- df[df$LCI > df$UCI, c("UCI", "LCI")]

head(df)
new_df <- df[order(-df$HS),] 
new_df$HR <- c(1:nrow(df))
df <- new_df
head(df)

