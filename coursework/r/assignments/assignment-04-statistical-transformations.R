library(ggplot2)
?diamonds
?mpg

head(diamonds)
head(mpg)
str(diamonds)
str(mpg)

ggplot(data = diamonds, aes(x = cut)) +
  geom_bar()

ggplot(data = diamonds, aes(x = cut, y = after_stat(prop), group = 1)) +
  geom_bar()

ggplot(data = mpg, aes(x = class, y = hwy)) +
  stat_summary(fun = mean, geom = "bar")

ggplot(data = mpg, aes(x = class, y = hwy)) +
  stat_summary(fun = mean, geom = "point")

ggplot(data = mpg, aes(x = class, y = hwy)) +
  stat_summary(fun.data = mean_cl_normal, geom = "errorbar")
