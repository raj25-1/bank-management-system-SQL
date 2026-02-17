create database Banking;


CREATE TABLE customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
cust_name VARCHAR(100),
phone VARCHAR(15),
email VARCHAR(100),
address VARCHAR(255),
city varchar(50),
created_date DATE default (curdate())
);

CREATE TABLE branches (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_name VARCHAR(100),
    city VARCHAR(50)
);


CREATE TABLE accounts (
account_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
 branch_id INT,
account_type enum("Savings","Current"),
balance DECIMAL(12,2) default 0 ,
created_date DATE default (curdate()),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);


CREATE TABLE transactions (
transaction_id INT AUTO_INCREMENT PRIMARY KEY,
account_id INT,
transaction_type enum("Deposit","Withdrawal"),
amount DECIMAL(12,2),
transaction_date DATETIME default (current_date()),

FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

