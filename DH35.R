# Student attendance data
attendance_data <- data.frame(
  Student = c("Student A", "Student B", "Student C", "Student D"),
  Class_Date = as.Date(c("2023-01-01", "2023-01-01", "2023-01-02", "2023-01-02")),
  Attendance = c("Present", "Absent", "Present", "Present")
)

# Load necessary libraries
library(ggplot2)

# a. Bar chart for the attendance of each student
bar_chart_attendance <- ggplot(attendance_data, aes(x = Student, fill = Attendance)) +
  geom_bar() +
  labs(title = "Attendance of Each Student",
       x = "Student",
       y = "Count",
       fill = "Attendance") +
  theme_minimal()

print(bar_chart_attendance)

# b. Stacked bar chart for the most recent attendance status
recent_attendance <- attendance_data %>%
  arrange(Class_Date) %>%
  group_by(Student) %>%
  slice_tail(n = 1)

stacked_bar_chart <- ggplot(recent_attendance, aes(x = Student, fill = Attendance)) +
  geom_bar() +
  labs(title = "Most Recent Attendance Status",
       x = "Student",
       y = "Count",
       fill = "Attendance") +
  theme_minimal()

print(stacked_bar_chart)

# c. Scatter plot for the relationship between class date and attendance
scatter_plot <- ggplot(attendance_data, aes(x = Class_Date, y = as.numeric(Attendance), color = Student)) +
  geom_point(position = position_jitter(h = 0.2), size = 3) +
  labs(title = "Relationship Between Class Date and Attendance",
       x = "Class Date",
       y = "Attendance",
       color = "Student") +
  theme_minimal() +
  scale_y_continuous(labels = c(1, 2), breaks = c(1, 2), expand = c(0, 0),
                     limits = c(0, 2), name = "Attendance",
                     breaks = c(1, 2), labels = c("Absent", "Present"))

print(scatter_plot)
