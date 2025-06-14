# Simple script analysing the Australian weather data
library("usethis")
use_git_config(user.name = "davina2343",
               user.email = "davina.gidda@tokiomarinekiln.com")


library("tidyverse")

# Read in the data

df = read_csv("data/weatherAUS.csv")

# Create a scatter plot of Humidity9am and Temp9am
# a location

city = "Sydney"

scatter_plot = 
df %>%
  filter(Location == 'Sydney') %>%
  ggplot(aes(x = Temp9am, y = Humidity9am) ) + 
  geom_point( colour ='green')
 
# Save the plot in graphics/
ggsave(filename = "graphics/scatter-temp-humidity.png", plot = scatter_plot)
