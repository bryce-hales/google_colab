library(tidyverse)

df <- read_csv("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")

summary(df)
glimpse(df)

df %>%
  group_by(Sex) %>%
  summarize(
    avg_age = mean(Age, na.rm = TRUE),
    survival_rate = mean(Survived, na.rm = TRUE)
  )

df %>%
  mutate(age_bucket = case_when(
    Age < 18 ~ "Under 18",
    Age < 40 ~ "18 to 39",
    Age < 65 ~ "40 to 64",
    Age >= 65 ~ "65 plus",
    TRUE ~ "Unknown"
  )) %>%
  count(age_bucket)

df %>%
  ggplot(aes(x = Sex, fill = factor(Survived))) +
  geom_bar(position = "fill") +
  labs(
    title = "Titanic Survival Rate by Sex",
    x = "Sex",
    y = "Proportion",
    fill = "Survived"
  )
