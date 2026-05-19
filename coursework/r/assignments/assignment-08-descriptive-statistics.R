library(tidyverse)

imdb_tv <- read_csv("Downloads/imdb_top_5000_tv_shows.csv")
imdb_tv

glimpse(imdb_tv)
colnames(imdb_tv)
summary(imdb_tv)

# Calculating the mean to find the average IMDb rating of the top 5000 TV shows
mean(imdb_tv$averageRating, na.rm = TRUE)

# Calculating the median to find the middle IMDb rating in the dataset
median(imdb_tv$averageRating, na.rm = TRUE)

# Calculating the mode to find out which director appears most often in the top 5000 TV shows dataset
imdb_tv %>%
  count(directors, sort = TRUE) %>%
  slice(1) %>%
  select(directors, n)

# Calculating the minimum to find the lowest IMDb rating in the dataset
min(imdb_tv$averageRating, na.rm = TRUE)

# Calculating the maximum to find the highest IMDb rating in the dataset
max(imdb_tv$averageRating, na.rm = TRUE)

# Calculating the range to see the spread of IMDb ratings
range(imdb_tv$averageRating, na.rm = TRUE)

# Calculating the interquartile range to understand the spread of the middle 50% of IMDb ratings
IQR(imdb_tv$averageRating, na.rm = TRUE)

# Calculating the correlation between average rating and number of votes
# to see whether more voted-on shows also tend to have higher ratings
cor(imdb_tv$averageRating, imdb_tv$numVotes, use = "complete.obs")
