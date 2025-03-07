data(airquality)  # Took for the data cleaning possibility

library(ggplot2)
library(dplyr)

summary(airquality)
is.na(airquality) # Check for missing values
colSums(is.na(airquality)) # Check for missing values on the original dataset

clean_data <- na.omit(airquality)
colSums(is.na(clean_data)) # Check for missing values on this cleaned dataset

summary(clean_data)