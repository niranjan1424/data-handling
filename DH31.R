# Customer data
customer_data <- data.frame(
  Customer = c("Customer 1", "Customer 2", "Customer 3", "Customer 4"),
  Rating = c(4, 3, 5, 2),
  Feedback = c("Great service!", "Decent but could improve.", "Excellent experience!", "Not satisfied at all.")
)

# Load necessary libraries
library(ggplot2)

# a. Histogram
histogram <- ggplot(customer_data, aes(x = Rating, fill = as.factor(Rating))) +
  geom_bar() +
  labs(title = "Distribution of Customer Ratings",
       x = "Rating",
       y = "Frequency") +
  theme_minimal()

print(histogram)

# b. Pie chart
pie_chart <- ggplot(customer_data, aes(x = "", fill = as.factor(Rating))) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Overall Distribution of Customer Ratings",
       fill = "Rating") +
  theme_minimal() +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank())

print(pie_chart)

# c. Stacked bar chart
stacked_bar_chart <- ggplot(customer_data, aes(x = Customer, y = Rating, fill = as.factor(Rating))) +
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Feedback by Customer Rating",
       x = "Customer",
       y = "Rating",
       fill = "Rating") +
  theme_minimal()

print(stacked_bar_chart)
