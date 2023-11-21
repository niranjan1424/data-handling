# Assuming you have a data frame named 'student_marks' with columns 'Student', 'Math', 'Science', and 'History'
student_marks <- data.frame(
  Student = c("Student A", "Student B", "Student C", "Student D"),
  Math = c(85, 76, 92, 88),
  Science = c(92, 88, 79, 95),
  History = c(78, 89, 87, 82)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Bar chart to visualize the marks of each student
bar_chart_student_marks <- ggplot(student_marks, aes(x = Student)) +
  geom_bar(aes(y = Math), stat = "identity", fill = "skyblue", position = "dodge") +
  geom_bar(aes(y = Science), stat = "identity", fill = "lightgreen", position = "dodge", width = 0.7) +
  geom_bar(aes(y = History), stat = "identity", fill = "lightcoral", position = "dodge", width = 0.5) +
  labs(title = "Marks of Each Student",
       x = "Student", y = "Marks") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Display the chart
print(bar_chart_student_marks)
# Assuming you have a data frame named 'student_marks' with columns 'Student', 'Math', 'Science', and 'History'
student_marks <- data.frame(
  Student = c("Student A", "Student B", "Student C", "Student D"),
  Math = c(85, 76, 92, 88),
  Science = c(92, 88, 79, 95),
  History = c(78, 89, 87, 82)
)

# Reshape the data for a stacked bar chart
library(tidyr)
student_marks_long <- gather(student_marks, Subject, Marks, -Student)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Stacked bar chart to show different subject status
stacked_bar_chart <- ggplot(student_marks_long, aes(x = Student, y = Marks, fill = Subject)) +
  geom_bar(stat = "identity") +
  labs(title = "Marks of Each Student by Subject",
       x = "Student", y = "Marks", fill = "Subject") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Display the chart
print(stacked_bar_chart)
# Assuming you have a data frame named 'student_marks' with columns 'Student', 'Math', 'Science', and 'History'
student_marks <- data.frame(
  Student = c("Student A", "Student B", "Student C", "Student D"),
  Math = c(85, 76, 92, 88),
  Science = c(92, 88, 79, 95),
  History = c(78, 89, 87, 82)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Scatter plot to explore the relationship between Math and History subjects
scatter_plot_math_history <- ggplot(student_marks, aes(x = Math, y = History)) +
  geom_point() +
  labs(title = "Relationship Between Math and History Subjects",
       x = "Math", y = "History")

# Display the chart
print(scatter_plot_math_history)
