library(ggplot2)
library(tidyverse)
library(scales)
library(palmerpenguins)
?palmerpenguins
?mpg

head(palmerpenguins)
head(mpg)
str(palmerpenguins)
str(mpg)

ggplot(data = penguins, aes(x = island, fill = species)) +
  geom_bar(position ="fill") +
  scale_y_continuous(labels = percent_format()) +
  labs(
    title = "Proportion of Penguin Species on Each Island",
    x = "Island",
    y = "Proportion",
    fill = "Species"
  )

ggplot(data=penguins, aes(x=species, y=body_mass_g, fill=sex)) +
  geom_boxplot(position = position_dodge(width=0.8), na.rm=T) +
  labs(
    title = "Body Mass by Species and Sex",
    x="Species",
    y="Body Mass",
    fill="Sex"
  )

ggplot(data = mpg, aes(x = class)) +
  geom_bar() +
  labs(
    title = "Total Cars by Class",
    x = "Car Class",
    y = "Count"
  )

ggplot(data = mpg, aes(x = class, fill = trans)) +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = percent_format()) +
  labs(
    title = "Transmission Types by Car Class",
    x = "Car Class",
    y = "Proportion",
    fill = "Transmission"
  )

ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_point()

ggplot(data = mpg, aes(x = displ, y = cty)) +
  geom_point(position = position_jitter(width = 0.1, height = 0.2)) +
  labs(
    title = "Engine Size vs City MPG",
    x = "Engine Size (displ)",
    y = "City MPG (cty)"
  )

# Explanation: I used position_jitter(), it improves the scatter plot 
# by spreading out points that would normally overlap. 
# This makes it easier to see when multiple observations have similar 
# values and gives a clearer picture of the relationship between engine
# size and city MPG.
