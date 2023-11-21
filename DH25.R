# Assuming you have a data frame named 'inventory_data' with the given data
inventory_data <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Quantity_Available = c(250, 175, 300, 200, 220)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Bar chart to visualize the quantity of each product in the inventory
bar_chart_product_quantity <- ggplot(inventory_data, aes(x = Product_Name, y = Quantity_Available, fill = Product_Name)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product in the Inventory",
       x = "Product Name", y = "Quantity Available", fill = "Product Name") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Display the chart
print(bar_chart_product_quantity)
# Assuming you have a data frame named 'category_data' with the product category information
# and 'inventory_data' with the given data
category_data <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Category = c("Category A", "Category B", "Category A", "Category C", "Category B")
)

# Merge inventory_data with category_data based on the common variable 'Product_ID'
merged_data <- merge(inventory_data, category_data, by = "Product_ID")

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Stacked bar chart to show the quantity of each product within different product categories
stacked_bar_chart_category_quantity <- ggplot(merged_data, aes(x = Product_Name, y = Quantity_Available, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product Within Different Product Categories",
       x = "Product Name", y = "Quantity Available", fill = "Category") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Display the chart
print(stacked_bar_chart_category_quantity)
