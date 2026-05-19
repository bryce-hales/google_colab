library(tidyverse)
library(lubridate)
library(maps)

map_data("state")

state_map <- map_data("state")

ggplot(state_map, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", color = "black") +
  coord_quickmap()

practice_dates <- tibble(
  date = ymd(c("2026-01-01", "2026-02-01", "2026-03-01"))
)

practice_dates %>%
  mutate(month = month(date, label = TRUE))
