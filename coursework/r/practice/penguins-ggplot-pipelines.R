library(tidyverse)
library(palmerpenguins)
library(ggridges)

penguins %>%
  drop_na() %>%
  group_by(species) %>%
  summarize(mean_body_mass = mean(body_mass_g))

penguins %>%
  ggplot(aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  geom_point() +
  geom_smooth(method = "lm")

penguins %>%
  drop_na() %>%
  ggplot(aes(x = body_mass_g, y = species, fill = species)) +
  geom_density_ridges()
