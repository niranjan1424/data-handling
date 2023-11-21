# Assuming you have a data frame named 'monthly_sales_data' with columns 'Employee' and 'Sales'
monthly_sales_data <- data.frame(
  Employee = c("John", "Alice", "Bob", "Sarah"),
  Sales = c(5000, 6200, 4500, 7400)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Line chart to visualize monthly sales
line_chart_monthly_sales <- ggplot(monthly_sales_data, aes(x = Employee, y = Sales, group = 1)) +
  geom_line() +
  labs(title = "Monthly Sales by Employee",
       x = "Employee", y = "Sales (in dollars)")

# Display the chart
print(line_chart_monthly_sales)
# Assuming you have a data frame named 'top_selling_products_data' with columns 'Product' and 'Sales'
top_selling_products_data <- data.frame(
  Product = c("Product A", "Product B", "Product C", "Product D"),
  Sales = c(12000, 10500, 9500, 13200)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Bar chart to display top-selling products for the year
bar_chart_top_selling_products <- ggplot(top_selling_products_data, aes(x = Product, y = Sales, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Top-Selling Products for the Year",
       x = "Product", y = "Sales (in dollars)", fill = "Product")

# Display the chart
print(bar_chart_top_selling_products)
# Assuming you have a data frame named 'advertising_sales_data' with columns 'Advertising_Budget' and 'Sales'
advertising_sales_data <- data.frame(
  Advertising_Budget = c(500, 700, 450, 800),
  Sales = c(5000, 6200, 4500, 7400)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Scatter plot to explore the relationship between advertising budget and monthly sales
scatter_plot_advertising_sales <- ggplot(advertising_sales_data, aes(x = Advertising_Budget, y = Sales)) +
  geom_point() +
  labs(title = "Relationship Between Advertising Budget and Monthly Sales",
       x = "Advertising Budget", y = "Sales (in dollars)")

# Display the chart
print(scatter_plot_advertising_sales)
