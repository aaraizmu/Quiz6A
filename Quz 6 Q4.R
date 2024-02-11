# Load required libraries
library(ggplot2)
library(tidyr)

# Simulated data for employee 1
employee1_customers <- c(1, 1, 3, 3, 5, 6, 7, 8, 10)

# Simulated data for employee 2
employee2_customers <- c(1, 1, 4, 3, 4, 4, 8, 9, 9)

# Ensure both datasets have the same length
min_length <- min(length(employee1_customers), length(employee2_customers))
employee1_customers <- employee1_customers[1:min_length]
employee2_customers <- employee2_customers[1:min_length]

# Create a data frame for the plot
data <- data.frame(
  Hour = 9:(8 + min_length),  # Adjust hours based on the length of datasets
  Employee1 = employee1_customers,
  Employee2 = employee2_customers
)

# Reshape the data for ggplot2
data <- gather(data, key = "Employee", value = "Customers", -Hour)

# Plot using ggplot2
ggplot(data, aes(x = Hour, y = Customers, color = Employee)) +
  geom_line() +
  geom_point() +
  labs(x = "Hour", y = "Number of Customers", title = "Customers Served by Each Employee per Hour") +
  scale_color_manual(values = c("blue", "red")) +
  theme_minimal()


