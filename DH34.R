# Order data
order_data <- data.frame(
  Order_ID = c(2001, 2002, 2003, 2004),
  Customer_Name = c("John", "Alice", "Bob", "Sarah"),
  Product = c("Widget X", "Widget Y", "Widget X", "Widget Z"),
  Quantity = c(10, 5, 8, 12),
  Price = c(5, 8, 5, 7)
)

# Load necessary libraries
library(ggplot2)

# a. Histogram for the distribution of quantity of products
histogram_quantity <- ggplot(order_data, aes(x = Quantity, fill = as.factor(Quantity))) +
  geom_bar() +
  labs(title = "Distribution of Quantity of Products",
       x = "Quantity",
       y = "Frequency") +
  theme_minimal()

print(histogram_quantity)

# b. Pie chart for the distribution of overall quantity and price
total_quantity <- sum(order_data$Quantity)
total_price <- sum(order_data$Quantity * order_data$Price)

pie_chart <- ggplot(NULL, aes(x = "", y = c(total_quantity, total_price), fill = c("Quantity", "Price"))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Distribution of Overall Quantity and Price",
       fill = "Category",
       subtitle = paste("Total Quantity: ", total_quantity, "\nTotal Price: $", total_price)) +
  theme_minimal() +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank())

print(pie_chart)
