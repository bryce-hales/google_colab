library(tidyverse)
library(ggplot2)
library(palmerpenguins)

penguins %>% 
  ggplot(data = penguins)

data = penguins

ggplot(data = penguins)

penguins %>% 
  ggplot(aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  geom_point() +
  labs(
    title = "Flipper Length by Body Mass",
    x = "Flipper Length",
    y = "Body Mass"
  )
