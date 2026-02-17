CREATE VIEW customer_balance AS
SELECT 
    c.cust_name,
    a.account_id,
    a.balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id;

select *
from customer_balance


/*📌 Why views?

Hide complexity

Used directly by dashboards & reports*/