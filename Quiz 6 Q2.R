# Simulated data for employee 1
employee1_customers <- c(1, 1, 3, 5, 6, 7, 8, 10)

# Simulated data for employee 2
employee2_customers <- c(1, 1, 4, 3, 4, 4, 8, 9, 9)

# Test 1: Calculate the average number of customers served per hour for each employee.
avg_customers_employee1 <- mean(employee1_customers)
avg_customers_employee2 <- mean(employee2_customers)
cat("Test 1: Average number of customers served per hour for Employee 1:", avg_customers_employee1, "\n")
cat("Test 1: Average number of customers served per hour for Employee 2:", avg_customers_employee2, "\n")

# Test 2: Compare the total number of customers served by each employee throughout the day.
total_customers_employee1 <- sum(employee1_customers)
total_customers_employee2 <- sum(employee2_customers)
cat("Test 2: Total number of customers served by Employee 1 throughout the day:", total_customers_employee1, "\n")
cat("Test 2: Total number of customers served by Employee 2 throughout the day:", total_customers_employee2, "\n")

# Test 3: Determine the hours during which each employee served the most customers.
max_customers_hour_employee1 <- which.max(employee1_customers)
max_customers_hour_employee2 <- which.max(employee2_customers)
cat("Test 3: Hour during which Employee 1 served the most customers:", max_customers_hour_employee1, "\n")
cat("Test 3: Hour during which Employee 2 served the most customers:", max_customers_hour_employee2, "\n")

# Test 4: Conduct a hypothesis test to determine if there is a significant difference in the average number of customers served per hour between the two employees.
t_test_result <- t.test(employee1_customers, employee2_customers)
cat("Test 4: Hypothesis Test - p-value:", t_test_result$p.value, "\n")

# Test 5: Calculate the standard deviation of the number of customers served by each employee per hour.
sd_employee1 <- sd(employee1_customers)
sd_employee2 <- sd(employee2_customers)
cat("Test 5: Standard deviation of customers served per hour for Employee 1:", sd_employee1, "\n")
cat("Test 5: Standard deviation of customers served per hour for Employee 2:", sd_employee2, "\n")

