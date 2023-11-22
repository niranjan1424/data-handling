# Sales data
sales_data <- data.frame(
  Store = c("Store A", "Store B", "Store A", "Store C"),
  Product = c("Widget X", "Widget Y", "Widget Y", "Widget X"),
  Quantity_Sold = c(100, 75, 50, 80),
  Revenue = c(500.00, 1125.00, 750.00, 400.00)
)

# Load necessary libraries
library(ggplot2)

# a. Bar chart for the quantity of each product in the inventory
bar_chart_quantity <- ggplot(sales_data, aes(x = Product, y = Quantity_Sold, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product in the Inventory",
       x = "Product",
       y = "Quantity Sold",
       fill = "Product") +
  theme_minimal()

print(bar_chart_quantity)

# b. Stacked bar chart for the quantity of each product within different stores
stacked_bar_chart <- ggplot(sales_data, aes(x = Store, y = Quantity_Sold, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product Within Different Stores",
       x = "Store",
       y = "Quantity Sold",
       fill = "Product") +
  theme_minimal()

print(stacked_bar_chart)

# c. Scatter plot for the relationship between Revenue and quantity available
scatter_plot <- ggplot(sales_data, aes(x = Quantity_Sold, y = Revenue, color = Product)) +
  geom_point(size = 3) +
  labs(title = "Relationship Between Revenue and Quantity Sold",
       x = "Quantity Sold",
       y = "Revenue",
       color = "Product") +
  theme_minimal()

print(scatter_plot)
