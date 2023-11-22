# Employee training data
training_data <- data.frame(
  Employee = c("John", "Alice", "Bob", "Sarah"),
  Department = c("HR", "Sales", "IT", "Finance"),
  Training_Hours = c(10, 8, 12, 6)
)

# Load necessary libraries
library(ggplot2)

# Check the structure of the training_data dataframe
str(training_data)

# Plotting

# a. Histogram for the distribution of Training Hours
histogram_training_hours <- ggplot(training_data, aes(x = Training_Hours)) +
  geom_histogram(binwidth = 2, color = "black", fill = "blue", alpha = 0.7) +
  labs(title = "Distribution of Training Hours",
       x = "Training Hours",
       y = "Frequency") +
  theme_minimal()

print(histogram_training_hours)

# b. Pie chart for the overall employee Training hours
total_training_hours <- sum(training_data$Training_Hours)

pie_chart <- ggplot(training_data, aes(x = "", y = Training_Hours, fill = as.factor(Training_Hours))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Overall Employee Training Hours",
       fill = "Training Hours",
       subtitle = paste("Total Training Hours: ", total_training_hours)) +
  theme_minimal() +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank())

print(pie_chart)

# c. Stacked bar chart for the distribution of training hours by Employee
stacked_bar_chart <- ggplot(training_data, aes(x = Employee, y = Training_Hours, fill = as.factor(Training_Hours))) +
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Training Hours by Employee",
       x = "Employee",
       y = "Training Hours",
       fill = "Training Hours") +
  theme_minimal()

print(stacked_bar_chart)
