# Assuming you have a data frame named 'stock_data' with the given data
stock_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03")),
  Stock_A = c(100, 105, 110),
  Stock_B = c(150, 152, 148),
  Stock_C = c(120, 118, 122)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Reshape the data for plotting
stock_data_long <- tidyr::gather(stock_data, key = "Stock", value = "Price", -Date)

# Line chart for stock prices over time
line_chart_stock_prices <- ggplot(stock_data_long, aes(x = Date, y = Price, color = Stock)) +
  geom_line() +
  labs(title = "Stock Prices Over Time",
       x = "Date", y = "Stock Price", color = "Stock")

# Display the chart
print(line_chart_stock_prices)
# Assuming you have a data frame named 'stock_data' with the given data
stock_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03")),
  Stock_A = c(100, 105, 110),
  Stock_B = c(150, 152, 148),
  Stock_C = c(120, 118, 122)
)

# Calculate daily percentage change for Stock A
stock_data$Stock_A_Percent_Change <- c(0, diff(stock_data$Stock_A) / lag(stock_data$Stock_A))

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Bar chart for daily percentage change in stock prices for Stock A
bar_chart_percent_change <- ggplot(stock_data, aes(x = Date, y = Stock_A_Percent_Change)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Daily Percentage Change in Stock Prices for Stock A",
       x = "Date", y = "Percentage Change")

# Display the chart
print(bar_chart_percent_change)
# Creating a table
stock_data_table <- tableGrob(stock_data, theme = ttheme_minimal())

# Display the table
grid.draw(stock_data_table)
