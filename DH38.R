# Student data
student_data <- data.frame(
  Student = c("Student A", "Student B", "Student C", "Student D"),
  Grade_Level = c("9th", "10th", "11th", "9th"),
  Enrollment_Date = as.Date(c("2023-08-15", "2023-09-02", "2023-07-20", "2023-08-30"))
)

# Load necessary libraries
library(ggplot2)
library(dplyr)

# a. Bar chart for the average grade level of the students
average_grade_chart <- ggplot(student_data, aes(x = factor(Grade_Level, levels = c("9th", "10th", "11th")), fill = Grade_Level)) +
  geom_bar() +
  labs(title = "Average Grade Level of Students",
       x = "Grade Level",
       y = "Count",
       fill = "Grade Level") +
  theme_minimal()

print(average_grade_chart)

# b. Stacked bar chart for most recent enrollment date
most_recent_enrollment <- student_data %>%
  arrange(desc(Enrollment_Date)) %>%
  slice_head(n = 1)

stacked_bar_chart <- ggplot(most_recent_enrollment, aes(x = Student, fill = as.factor(Enrollment_Date))) +
  geom_bar() +
  labs(title = "Most Recent Enrollment Date",
       x = "Student",
       y = "Count",
       fill = "Enrollment Date") +
  theme_minimal()

print(stacked_bar_chart)

# c. Scatter plot for the relationship between grade level and enrollment date
scatter_plot <- ggplot(student_data, aes(x = Enrollment_Date, y = as.numeric(Grade_Level), color = Student)) +
  geom_point(position = position_jitter(h = 0.2), size = 3) +
  labs(title = "Relationship Between Grade Level and Enrollment Date",
       x = "Enrollment Date",
       y = "Grade Level",
       color = "Student") +
  theme_minimal() +
  scale_y_continuous(labels = c(9, 10, 11), breaks = c(9, 10, 11), expand = c(0, 0),
                     limits = c(8.5, 11.5), name = "Grade Level",
                     breaks = c(9, 10, 11), labels = c("9th", "10th", "11th"))

print(scatter_plot)
