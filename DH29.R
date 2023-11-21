# Assuming you have a data frame named 'inventory_data' with columns 'Product', 'Quantity', and 'Price'
inventory_data <- data.frame(
  Product = c("Widget A", "Widget B", "Widget C", "Widget D"),
  Quantity = c(100, 75, 120, 50),
  Price = c(10.00, 15.00, 8.50, 20.00)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Bar chart to visualize the quantity of each product
bar_chart_quantity <- ggplot(inventory_data, aes(x = Product, y = Quantity)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Quantity of Each Product in the Inventory",
       x = "Product", y = "Quantity") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Display the chart
print(bar_chart_quantity)
# Assuming you have a data frame named 'inventory_data' with columns 'Product', 'Quantity', and 'Price'
inventory_data <- data.frame(
  Product = c("Widget A", "Widget B", "Widget C", "Widget D"),
  Quantity = c(100, 75, 120, 50),
  Price = c(10.00, 15.00, 8.50, 20.00)
)

# Assuming you have another column 'Category' specifying the category of each product
inventory_data$Category <- c("Category A", "Category B", "Category A", "Category B")

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Stacked bar chart to show quantity of each product within different categories
stacked_bar_chart <- ggplot(inventory_data, aes(x = Product, y = Quantity, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product Within Different Categories",
       x = "Product", y = "Quantity", fill = "Category") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Display the chart
print(stacked_bar_chart)
# Assuming you have a data frame named 'inventory_data' with columns 'Product', 'Quantity', and 'Price'
inventory_data <- data.frame(
  Product = c("Widget A", "Widget B", "Widget C", "Widget D"),
  Quantity = c(100, 75, 120, 50),
  Price = c(10.00, 15.00, 8.50, 20.00)
)

# Table to show inventory data for each product
inventory_table <- knitr::kable(inventory_data, format = "html", caption = "Inventory Data for Each Product") %>%
  kableExtra::kable_styling("striped", full_width = FALSE)

# Display the table
print(inventory_table)
