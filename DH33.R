# Employee data
employee_data <- data.frame(
  Employee = c("John", "Alice", "Bob", "Sarah"),
  Age = c(32, 28, 35, 29),
  Gender = c("Male", "Female", "Male", "Female"),
  Department = c("HR", "Sales", "IT", "Finance"),
  Salary = c(60000, 70000, 75000, 68000)
)

# Load necessary libraries
library(ggplot2)
library(dplyr)
library(kableExtra)

# a. Bar chart for the distribution of employee ages
bar_chart_age <- ggplot(employee_data, aes(x = Employee, y = Age, fill = Employee)) +
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Employee Ages",
       x = "Employee",
       y = "Age") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

print(bar_chart_age)

# b. Pie chart for the distribution of employees by gender
pie_chart_gender <- ggplot(employee_data, aes(x = "", fill = Gender)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Distribution of Employees by Gender",
       fill = "Gender") +
  theme_minimal() +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank())

print(pie_chart_gender)

# c. Table for demographic information
demographic_table <- employee_data %>%
  kable("html") %>%
  kable_styling(full_width = FALSE) %>%
  add_headers("Employee", "Age", "Gender", "Department", "Salary (USD)")

print(demographic_table)
