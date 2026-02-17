/*“This view creates a virtual table that joins customer and account data to present customer names along with their account balances. 
It abstracts the join logic, so users and reports can query balance information directly without writing complex SQL each time.
The view improves readability, reusability, and consistency across reporting queries.”*/

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
