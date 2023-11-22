# Product data
product_data <- data.frame(
  Product = c("Laptop A", "Phone B", "Chair C", "Book D"),
  Category = c("Electronics", "Electronics", "Furniture", "Books"),
  Quantity = c(50, 75, 120, 200),
  Price = c(800.00, 500.00, 50.00, 10.00)
)

# Load necessary libraries
library(ggplot2)

# a. Bar chart for quantity of each product
bar_chart_quantity <- ggplot(product_data, aes(x = Product, y = Quantity, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product in the Inventory",
       x = "Product",
       y = "Quantity") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

print(bar_chart_quantity)

# b. Stacked bar chart for quantity within product categories
stacked_bar_chart <- ggplot(product_data, aes(x = Category, y = Quantity, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product Within Categories",
       x = "Category",
       y = "Quantity",
       fill = "Product") +
  theme_minimal()

print(stacked_bar_chart)

# c. Scatter plot for product price and quantity relationship
scatter_plot <- ggplot(product_data, aes(x = Quantity, y = Price, color = Product)) +
  geom_point(size = 3) +
  labs(title = "Relationship Between Product Price and Quantity",
       x = "Quantity",
       y = "Price",
       color = "Product") +
  theme_minimal()

print(scatter_plot)
