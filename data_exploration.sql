-- Who are the top 5 customers?
SELECT 
    a.name AS customer_name,
    SUM(o.total_amt_usd) AS total_spent
FROM accounts a
JOIN orders o ON a.id = o.account_id
GROUP BY a.name
ORDER BY total_spent DESC
LIMIT 5;

-- How many customers in each region?
SELECT 
    r.name AS region,
    COUNT(a.id) AS number_of_customers
FROM regions r
JOIN sales_reps sr ON r.id = sr.region_id
JOIN accounts a ON sr.id = a.sales_rep_id
GROUP BY r.name
ORDER BY number_of_customers DESC;

-- Which sales rep has the most customers?
SELECT 
    sr.name AS sales_rep,
    COUNT(a.id) AS number_of_customers
FROM sales_reps sr
JOIN accounts a ON sr.id = a.sales_rep_id
GROUP BY sr.name
ORDER BY number_of_customers DESC
LIMIT 5;

-- How many of each product type sold?
SELECT 
    SUM(standard_qty) AS total_standard,
    SUM(gloss_qty) AS total_gloss,
    SUM(poster_qty) AS total_poster
FROM orders;

-- What is the average order value?
SELECT 
    ROUND(AVG(total_amt_usd), 2) AS avg_order_value
FROM orders;

-- How much revenue per region?
SELECT 
    r.name AS region,
    SUM(o.total_amt_usd) AS total_revenue
FROM regions r
JOIN sales_reps sr ON r.id = sr.region_id
JOIN accounts a ON sr.id = a.sales_rep_id
JOIN orders o ON a.id = o.account_id
GROUP BY r.name
ORDER BY total_revenue DESC;