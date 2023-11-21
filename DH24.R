# Assuming you have a data frame named 'employee_data' with the given data
employee_data <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  Years_of_Service = c(5, 3, 7, 4, 2),
  Performance_Score = c(85, 92, 78, 90, 76)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Bar chart for the distribution of employees across different departments
bar_chart_department_distribution <- ggplot(employee_data, aes(x = Department, fill = Department)) +
  geom_bar() +
  labs(title = "Distribution of Employees Across Different Departments",
       x = "Department", y = "Number of Employees", fill = "Department")

# Display the chart
print(bar_chart_department_distribution)
# Assuming you have a data frame named 'employee_data' with the given data
employee_data <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  Years_of_Service = c(5, 3, 7, 4, 2),
  Performance_Score = c(85, 92, 78, 90, 76)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Line chart to visualize the performance trend of employees over time
line_chart_performance_trend <- ggplot(employee_data, aes(x = Employee_ID, y = Performance_Score, group = 1)) +
  geom_line() +
  labs(title = "Performance Trend of Employees Over Time",
       x = "Employee ID", y = "Performance Score")

# Display the chart
print(line_chart_performance_trend)
