# Assuming you have a data frame named 'sales_data' with the given data
sales_data <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Time series line chart for monthly sales trend
line_chart_monthly_sales <- ggplot(sales_data, aes(x = as.factor(Month), y = Sales, group = 1)) +
  geom_line() +
  labs(title = "Trend in Monthly Sales",
       x = "Month", y = "Sales ($)")

# Display the chart
print(line_chart_monthly_sales)
# Assuming you have a data frame named 'advertising_data' with the advertising budget data
# You should merge this data with the 'sales_data' based on the common variable, such as 'Month'

# Merge sales_data with advertising_data based on the common variable 'Month'
merged_data <- merge(sales_data, advertising_data, by = "Month")

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Scatter plot for the relationship between advertising budget and monthly sales
scatter_plot_advertising_sales <- ggplot(merged_data, aes(x = Advertising_Budget, y = Sales)) +
  geom_point() +
  labs(title = "Relationship Between Advertising Budget and Monthly Sales",
       x = "Advertising Budget", y = "Sales ($)")

# Display the chart
print(scatter_plot_advertising_sales)
