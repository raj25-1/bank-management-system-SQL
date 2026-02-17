 -- wqtd the cust_name and total balance
SELECT c.cust_name, SUM(a.balance) AS total_balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.cust_name;



-- wqtd the month - wise transactions 

SELECT 
    DATE_FORMAT(transaction_date,'%Y-%m') AS month,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY DATE_FORMAT(transaction_date,'%Y-%m');



