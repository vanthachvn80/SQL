# DISTINCT countries FROM Customers
# retrieves a list of distinct countries from the "Customers" table.
# It ensures that each country is only listed once, eliminating duplicate entries.

SELECT DISTINCT country FROM customers;

# calculates the total number of distinct customers 
SELECT COUNT(DISTINCT customerNumber) AS Total_Customer
FROM customers;

# ORDERS table
# calculate the count of orders for each country
SELECT country, COUNT(country) AS count
FROM orders o
JOIN customers c
ON o.customerNumber = c.customerNumber
GROUP BY country
ORDER BY count DESC;

# calculates the status of orders 
SELECT DISTINCT status FROM orders;

# calculates the numbers of each status of orders 
SELECT status, COUNT(status) AS count
FROM orders o
JOIN customers c
ON o.customerNumber = c.customerNumber
GROUP BY status
ORDER BY count DESC;

# calculates the numbers of comments of orders 
SELECT comments, COUNT(comments) AS count
FROM orders o
JOIN customers c
ON o.customerNumber = c.customerNumber
GROUP BY comments
ORDER BY count DESC;
