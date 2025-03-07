# Air Quality Data Analysis

## Overview
This project analyzes the `airquality` standard data set in R, exploring relationships between ozone levels, wind speed, temperature, and solar radiation. It includes data cleaning and visualizations.

## Dataset
- **Source**: Standard R data set `airquality`
- **Variables**: Ozone, Solar.R, Wind, Temp, Month, Day
- **Missing Values**: Removed 37 rows with `na.omit()`

## Visualizations
1. **Ozone vs Wind by Month**  
   - Scatter plot faceted by month  
   - Color gradient represents temperature  

2. **Temperature vs Solar Radiation**  
   - Scatter plot colored by ozone levels  
   - Shows interaction between temperature and solar radiation  

## Dependencies
- R
- Installed packages: ggplot2 and dplyr

##Observations:
The month of June (06) has the less quantities of data. This could be caused by a common vacation month in the place where the data was gather, or by a maintenance of the equipement that collect the data.
