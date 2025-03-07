data(airquality)  # Took for the data cleaning possibility

library(ggplot2)
library(dplyr)

summary(airquality)
is.na(airquality) # Check for missing values
colSums(is.na(airquality)) # Check for missing values on the original data set

clean_data <- na.omit(airquality)
colSums(is.na(clean_data)) # Check for missing values on this cleaned data set

summary(clean_data)

ggplot(clean_data, aes(x = Wind, y = Ozone)) + #Define the axis
  geom_point(aes(color = Temp), size = 1.5) + #Set the type of the graph, dot size and set the variable Temp in funtion of the value
  scale_color_gradient(low = "blue", high = "red") + #Set the color gradient
  facet_wrap(~Month) +
  labs(title = "Ozone vs Wind per month", x = "wind speed (mph)", y = "Ozone (ppb)") +
  theme_minimal()

ggplot(clean_data, aes(x = Temp, y = Solar.R, fill = Ozone)) + #Define the axis, and the fill
  geom_point(aes(color = Ozone), size = 1.5) + #Set the type of the graph, dot size and set the variable Temp in funtion of the value
  labs(title = "Relation between temperature, Solar radiation and Ozone", 
       x = "Temperature (°F)", y = "Solar radiation (W/m²)") + #labels
  theme_minimal()