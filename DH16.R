# Assuming you have a data frame named 'sales_data' with the given data
sales_data <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  January_Sales = c(2000, 1500, 1200),
  February_Sales = c(2200, 1800, 1400),
  March_Sales = c(2400, 1600, 1100)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Reshape the data for plotting
sales_data_long <- tidyr::gather(sales_data, key = "Month", value = "Sales", -Product_ID, -Product_Name)

# Grouped bar chart for sales of each product for the first quarter
grouped_bar_chart <- ggplot(sales_data_long, aes(x = Product_Name, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Sales of Each Product for the First Quarter",
       x = "Product Name", y = "Sales", fill = "Month")

# Display the chart
print(grouped_bar_chart)
# Assuming you have a data frame named 'sales_data' with the given data
sales_data <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  January_Sales = c(2000, 1500, 1200),
  February_Sales = c(2200, 1800, 1400),
  March_Sales = c(2400, 1600, 1100)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Reshape the data for plotting
sales_data_long <- tidyr::gather(sales_data, key = "Month", value = "Sales", -Product_ID, -Product_Name)

# Stacked area chart for overall sales trend over the three months
stacked_area_chart <- ggplot(sales_data_long, aes(x = as.factor(Product_ID), y = Sales, fill = Month)) +
  geom_area() +
  labs(title = "Overall Sales Trend for All Products",
       x = "Product ID", y = "Sales", fill = "Month") +
  scale_x_discrete(labels = sales_data$Product_Name)

# Display the chart
print(stacked_area_chart)
# Creating a table
sales_data_table <- tableGrob(sales_data, theme = ttheme_minimal())

# Display the table
grid.draw(sales_data_table)
