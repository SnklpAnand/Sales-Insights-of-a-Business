# Joining the sales and transactions table

SELECT transactions.*, date.*
FROM transactions
INNER JOIN date
ON sales.transactions.order_date = sales.date.date
WHERE year = "2020"


# Calculating the total revenue of year 2020

SELECT SUM(transactions.sales_amount) AS Year_Revenue
FROM transactions
INNER JOIN date
ON sales.transactions.order_date = sales.date.date
WHERE year = "2020"


# Calculating the total revenue of year 2020 in Chennai (Market Code -- Mark001)

SELECT SUM(transactions.sales_amount) AS Year_Revenue
FROM transactions
INNER JOIN date
ON sales.transactions.order_date = sales.date.date
WHERE year = "2020" AND market_code = "Mark001"


# Calculating the different types of product sold in Chennai

SELECT count(distinct product_code) AS Types_of_Product
FROM transactions
WHERE market_code = "Mark001"


# Total Revenue in the year 2020 on the month of January

SELECT SUM(transactions.sales_amount) 
FROM transactions 
INNER JOIN date 
ON transactions.order_date=date.date 
where date.year=2020 and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");



