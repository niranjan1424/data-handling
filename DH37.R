# Sales data
sales_data <- data.frame(
  Customer = c("Customer A", "Customer B", "Customer A", "Customer C"),
  Product = c("Widget X", "Widget Y", "Widget Z", "Widget X"),
  Quantity = c(5, 3, 2, 4),
  Price = c(10.00, 15.00, 8.50, 9.00)
)

# Load necessary libraries
library(ggplot2)

# a. Histogram for the distribution of Quantity
histogram_quantity <- ggplot(sales_data, aes(x = Quantity)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  labs(title = "Distribution of Quantity",
       x = "Quantity",
       y = "Frequency") +
  theme_minimal()

print(histogram_quantity)

# b. Pie chart for the distribution of overall quantity and price
total_quantity <- sum(sales_data$Quantity)
total_price <- sum(sales_data$Quantity * sales_data$Price)

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
