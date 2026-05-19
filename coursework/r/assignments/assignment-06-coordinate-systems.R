library(ggplot2)
library(maps)

?mpg

head(mpg)
str(mpg)

ggplot(data = mpg, aes(x = class)) +
  geom_bar() +
  labs(
    title = "Cars by Class",
    x = "Car Class",
    y = "Count"
  )

ggplot(data = mpg, aes(x = "", fill = class)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(
    title = "Proportion of Cars by Class",
    x = "",
    y = ""
  )

ggplot(data = mpg, aes(x = displ, y = cty)) +
  geom_point() +
  labs(
    title = "Displacement vs City MPG",
    x = "Displacement",
    y = "City MPG"
  )

ggplot(data = mpg, aes(x = displ, y = cty)) +
  geom_point() +
  coord_flip() +
  labs(
    title = "Displacement vs City MPG with Flipped Axes",
    x = "Displacement",
    y = "City MPG"
  )

nz <- map_data("nz")

ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black")

ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black") +
  coord_quickmap()

# coord_quickmap() made the New Zealand map look more accurate. 
# Without it, the shape can look stretched because the x and y axes
# are treated like regular graph coordinates. With coord_quickmap(),
# the map keeps a better geographic proportion, so it is easier to read
# and looks more natural.
