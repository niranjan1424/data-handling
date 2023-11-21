# Assuming you have a data frame named 'click_through_data' with the given data
click_through_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_Through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Sort the data by Click-Through Rate in descending order
click_through_data_sorted <- click_through_data[order(-click_through_data$Click_Through_Rate), ]

# Set the number of top days you want to display
top_n_days <- 3  # Change this number based on your requirement

# Subset the data to get the top N days
top_days_data <- head(click_through_data_sorted, n = top_n_days)

# Bar chart for the top N days with the highest click-through rates
bar_chart_top_days <- ggplot(top_days_data, aes(x = Date, y = Click_Through_Rate, fill = as.factor(Date))) +
  geom_bar(stat = "identity") +
  labs(title = paste("Top", top_n_days, "Days with Highest Click-Through Rates"),
       x = "Date", y = "Click-Through Rate", fill = "Date") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Display the chart
print(bar_chart_top_days)
# Assuming you have a data frame named 'interaction_data' with the given data
interaction_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Likes = c(500, 600, 450, 700, 800),
  Shares = c(200, 250, 180, 300, 400),
  Comments = c(100, 120, 90, 150, 200)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Reshape the data for plotting
interaction_data_long <- tidyr::gather(interaction_data, key = "Interaction_Type", value = "Count", -Date)

# Stacked area chart for the distribution of user interactions
stacked_area_chart <- ggplot(interaction_data_long, aes(x = Date, y = Count, fill = Interaction_Type)) +
  geom_area() +
  labs(title = "Distribution of User Interactions on the Website",
       x = "Date", y = "Count", fill = "Interaction Type")

# Display the chart
print(stacked_area_chart)
