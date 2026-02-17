# bank-management-system-SQL
A production-style Bank Management System built using Advanced SQL with automation, triggers, views, and reporting.

# 🏦 Bank Management System (Advanced SQL)

## 📖 Overview
This project is a **relational Bank Management System** built using **Advanced SQL (MySQL)**.  
It simulates real-world banking workflows such as **customer onboarding, account creation, deposits, withdrawals, and balance tracking**, with a strong focus on **automation, data integrity, and performance optimization**.

---

## 🎯 Project Objectives
- Manage customer, account, branch, and transaction data
- Maintain accurate account balances automatically
- Enforce data integrity using relational constraints
- Provide optimized reporting using views and indexes
- Demonstrate production-style database design using SQL

---

## 🧱 Database Schema

### Tables
- **customers** – Stores customer personal details  
- **branches** – Stores bank branch information  
- **accounts** – Stores customer accounts and balances  
- **transactions** – Stores deposit and withdrawal history  

### Relationships
- One customer → Many accounts  
- One account → Many transactions  
- One branch → Many accounts  

---

## ⚙️ Key Features

### 🔁 Automated Balance Management
- Account balances are **automatically updated** using SQL **triggers**
- Ensures consistency between transactions and account balances
- Eliminates manual balance calculations

### 🔐 Data Integrity
- Foreign keys enforce referential integrity
- ENUM constraints restrict invalid transaction types
- Safe schema evolution without data loss

### 📊 Reporting & Abstraction
- Views simplify access to customer balance data
- Stored procedures encapsulate reusable business logic
- Aggregate queries generate financial summaries

### 🚀 Performance Optimization
- Indexes improve performance of transaction-based queries
- Set-based SQL operations ensure scalability

---

## 🗂️ Project Structure

bank-management-system-sql/
│
├── schema/
│ └── create_tables.sql
│
├── data/
│ ├── insert_customers.sql
│ ├── insert_accounts.sql
│ └── insert_transactions.sql
│
├── automation/
│ ├── triggers.sql
│ └── procedures.sql
│
├── reporting/
│ ├── views.sql
│ └── analytical_queries.sql
│
└── README.md

🛠️ Technologies Used

MySQL
> SQL (DDL, DML)
> Triggers
> Views
> Stored Procedures
> Indexes
> Joins & Aggregates

🧠 Learning Outcomes

-- Designed normalized relational schemas
-- Implemented automation using SQL triggers
-- Applied real-world data integrity practices
-- Optimized query performance
--Managed schema evolution safely

