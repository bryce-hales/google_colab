library(tidyverse)
library(palmerpenguins)

penguins %>%
  ggplot(aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  geom_point()

penguins %>%
  group_by(species) %>%
  summarize(mean_body_mass = mean(body_mass_g, na.rm = TRUE))
