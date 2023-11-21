# Assuming you have a data frame named 'customer_data' with the given data
customer_data <- data.frame(
  Customer_ID = c(1, 2, 3, 4, 5),
  Age = c(28, 35, 42, 30, 45),
  Satisfaction_Score = c(4, 5, 3, 4, 5)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Histogram for the distribution of customer ages
histogram_customer_ages <- ggplot(customer_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "white") +
  labs(title = "Distribution of Customer Ages",
       x = "Age", y = "Frequency")

# Display the chart
print(histogram_customer_ages)
# Assuming you have a data frame named 'customer_data' with the given data
customer_data <- data.frame(
  Customer_ID = c(1, 2, 3, 4, 5),
  Age = c(28, 35, 42, 30, 45),
  Satisfaction_Score = c(4, 5, 3, 4, 5)
)

# Calculate the distribution of overall customer satisfaction scores
satisfaction_distribution <- table(customer_data$Satisfaction_Score)

# Install and load necessary library (if not installed)
# install.packages("plotly")
library(plotly)

# Pie chart for the distribution of overall customer satisfaction scores
pie_chart_satisfaction_scores <- plot_ly(labels = names(satisfaction_distribution),
                                         values = satisfaction_distribution,
                                         type = "pie") %>%
  layout(title = "Distribution of Overall Customer Satisfaction Scores")

# Display the chart
print(pie_chart_satisfaction_scores)
