# Sales data
sales_data <- data.frame(
  Region = c("North", "North", "South", "South"),
  Month = c("Jan", "Feb", "Jan", "Feb"),
  Sales = c(5000, 6200, 4800, 5600)
)

# Load necessary libraries
library(ggplot2)
library(dplyr)
library(kableExtra)

# a. Grouped bar chart for sales of each region in the first quarter
grouped_bar_chart <- ggplot(sales_data, aes(x = Region, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Sales of Each Region in the First Quarter",
       x = "Region",
       y = "Sales (USD)",
       fill = "Month") +
  theme_minimal()

print(grouped_bar_chart)

# b. Stacked area chart for overall sales trend over three months
stacked_area_chart <- ggplot(sales_data, aes(x = Month, y = Sales, fill = Region)) +
  geom_area() +
  labs(title = "Overall Sales Trend Over Three Months",
       x = "Month",
       y = "Sales (USD)",
       fill = "Region") +
  theme_minimal()

print(stacked_area_chart)

# c. Table for monthly sales data for each region
sales_table <- sales_data %>%
  spread(key = Region, value = Sales) %>%
  kable("html") %>%
  kable_styling(full_width = FALSE) %>%
  add_headers("Month", "North", "South")

print(sales_table)
