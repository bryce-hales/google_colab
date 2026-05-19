library(ggplot2)
library(dplyr)

mpg

dim(mpg)
names(mpg)
head(mpg)
str(mpg)

mpg %>% 
  ggplot(aes(x = displ, y = hwy, color = displ)) +
  geom_point() +
  facet_wrap(~ class)

mpg %>% 
  ggplot(aes(x = displ, y = hwy, color = displ)) +
  geom_point() +
  facet_grid(drv ~ class)
