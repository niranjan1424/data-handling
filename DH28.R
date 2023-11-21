# Assuming you have a data frame named 'weather_data' with columns 'Date', 'Temperature', and 'Precipitation'
weather_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04")),
  Temperature = c(12, 9, 15, 8),
  Precipitation = c(0.5, 2.0, 0.0, 5.0)
)

# Create a dummy column for the merge
weather_data$dummy_variable <- 1

# World map data
world_map <- map_data("world")

# Merge world map data with temperature data
merged_data <- merge(world_map, weather_data, by.x = "region", by.y = "dummy_variable", all.x = TRUE)

# Map chart to visualize the distribution of temperature
map_chart_temperature <- ggplot() +
  geom_polygon(data = merged_data, aes(x = long, y = lat, group = group, fill = Temperature)) +
  scale_fill_gradient(low = "blue", high = "red", name = "Temperature (°C)") +
  labs(title = "Distribution of Temperature on a Geographic Map", fill = "Temperature (°C)")

# Display the chart
print(map_chart_temperature)
# Assuming you have a data frame named 'weather_data' with columns 'Date', 'Temperature', and 'Precipitation'
weather_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04")),
  Temperature = c(12, 9, 15, 8),
  Precipitation = c(0.5, 2.0, 0.0, 5.0)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Scatter plot to explore the relationship between average temperature and precipitation
scatter_plot_temperature_precipitation <- ggplot(weather_data, aes(x = Temperature, y = Precipitation)) +
  geom_point() +
  labs(title = "Relationship Between Average Temperature and Precipitation",
       x = "Temperature (°C)", y = "Precipitation (mm)")

# Display the chart
print(scatter_plot_temperature_precipitation)
# Assuming you have a data frame named 'weather_data' with columns 'Date', 'Temperature', and 'Precipitation'
weather_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04")),
  Temperature = c(12, 9, 15, 8),
  Precipitation = c(0.5, 2.0, 0.0, 5.0)
)

# Install and load necessary library (if not installed)
# install.packages("kableExtra")
library(kableExtra)

# Table to display weather data for each date
weather_table <- kable(weather_data, format = "html", caption = "Weather Data for Each Date") %>%
  kable_styling("striped", full_width = FALSE)

# Display the table
print(weather_table)
