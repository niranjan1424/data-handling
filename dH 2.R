customer_data <- data.frame(
  Customer_ID = 1:5,
  Age = c(25, 30, 35, 28, 40),
  Satisfaction_Score = c(4, 5, 3, 4, 5)
)
barplot(customer_data$Satisfaction_Score, 
        names.arg = customer_data$Customer_ID,
        col = "skyblue",
        main = "Satisfaction Scores by Customer",
        xlab = "Customer ID",
        ylab = "Satisfaction Score")
pie(customer_data$Satisfaction_Score, 
        names.arg = customer_data$Customer_ID,
        col = "skyblue")
hist(customer_data$Satisfaction_Score,                              
    names.arg = customer_data$Customer_ID,
    col = "red")