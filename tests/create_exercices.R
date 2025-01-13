library(ggplot2)
library(dplyr)

df <- read.csv("data/raw/data_raw.csv")

df_yoga <- df %>%
  select(ses_gender, lifestyle_yoga_freq)

df_yoga <- df_yoga %>%
  group_by(lifestyle_yoga_freq, ses_gender) %>%
  summarise(n = n())

ggplot(df_yoga, aes(x = lifestyle_yoga_freq, y = n)) +
  geom_col(aes(fill = ses_gender), position = "dodge")
