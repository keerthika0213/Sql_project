# Sql_project
🧾 Identifying Inactive Customers from Transaction Data

A PostgreSQL analytics pipeline + Power BI dashboard that identifies dormant customers, quantifies revenue at risk, and prioritizes high-value accounts for re-engagement.

Show Image Show Image Show Image Show Image

📁 Table of Contents
Overview
Business Problem
Objective
Business Questions Answered
Database Schema
Tools & Technologies
Project Workflow
SQL Analysis Breakdown
Power BI Dashboard
Dashboard Metrics & Visuals
SQL & BI Skills Demonstrated
Repository Structure
How to Use
Future Improvements
Author
🧾 Overview

VK Enterprises Private Limited retains thousands of customer records, but not every customer keeps purchasing over time. Without a systematic way to track this, the company had no accurate way to measure customer churn or prioritize re-engagement — and re-engaging an existing customer is far cheaper than acquiring a new one.

This project builds a PostgreSQL-based analytical pipeline that identifies customers who have gone inactive (no purchase in the last 6 months), calculates their historical value, and quantifies exactly how much revenue is at risk — then surfaces it all in an interactive Power BI dashboard so marketing and CRM teams can act on it directly, rather than digging through raw tables.

❗ Business Problem

VK Enterprises retains a large volume of customer records in its database, but not all customers continue purchasing over time. As a result:

The company cannot accurately measure customer churn
There is no systematic way to count or identify inactive/dormant customers
Marketing and CRM teams have no easy way to analyze historical purchase behavior of dormant customers or launch targeted retention campaigns
High-value at-risk customers go unnoticed alongside low-value ones, wasting limited re-engagement budget
🎯 Objective

Using SQL, identify customers who have not made a purchase during a predefined inactivity period (6 or 12 months). For each customer, calculate:

Last purchase date
Purchase frequency
Lifetime purchase value (CLV)

...and then prioritize outreach based on which inactive customers represent the greatest revenue loss.

❓ Business Questions Answered
Which customers have not purchased in the last 6 or 12 months?
How long has each customer been inactive?
What is each inactive customer's lifetime value (total spend, average order value, order count)?
Which high-revenue inactive customers should be prioritized for outreach?

Expected outcome: Move the company from reactive to proactive customer lifecycle management — reducing churn, recovering at-risk revenue, and improving ROI on retention marketing by focusing effort on high-value dormant customers first.

🗃️ Database Schema

A normalized relational schema was designed in PostgreSQL:

Table	Description	Key Columns
categories	Product category lookup	category_id, category_name (10 categories: Electronics, Apparel, Groceries, Home & Kitchen, Beauty, Sports, Books, Toys, Footwear, Furniture)
products	Product catalog	product_id, product_name, category_id (FK), unit_price, stock_quantity (100 products)
customers	Customer master data	customer_id, first_name, last_name, gender, date_of_birth, email, phone, city, state, registration_date (500 customers across 16+ Indian states)
orders	Order header records	order_id, customer_id (FK), order_date, payment_method, delivery_city, order_status
order_items	Line-item order details	order_item_id, order_id (FK), product_id (FK), quantity, unit_price, discount

Relationships: orders.customer_id → customers.customer_id, order_items.order_id → orders.order_id, order_items.product_id → products.product_id, products.category_id → categories.category_id

🛠️ Tools & Technologies
PostgreSQL — schema design, data storage, analytical querying
SQL — CTEs (Common Table Expressions), conditional aggregation (CASE/MAX), date arithmetic, window-style grouping
Power BI Desktop — interactive dashboard for the SQL-derived metrics
DAX — measures for the Power BI layer
🔄 Project Workflow
Problem Definition — Documented the business problem, objective, and key questions to answer.
Schema Design — Built a normalized 5-table relational schema (categories, products, customers, orders, order_items).
Data Population — Loaded customer and product master data; generated transactional order/order-item records.
SQL Analysis — Wrote a progressive series of SQL queries (in PostgreSQL) to define activity status, calculate CLV, and quantify revenue at risk.
Dashboard Design (Power BI) — Connected the query outputs to Power BI and built an interactive dashboard summarizing all key metrics.
Interactivity — Enabled filtering by state, CLV segment, and inactivity period.
Testing & Finalization — Verified metric accuracy against the underlying SQL logic before finalizing.
🔍 SQL Analysis Breakdown

The SQL script (SQL/inactive_customers_analysis.sql) builds up the analysis step by step:

#	Query	What It Does
1	Total & unique customers	Counts total records in the customers table
2	First/last order date	Establishes the overall date range of transaction data
3	Last purchase per customer	Uses MAX(CASE WHEN order_status = 'Delivered' ...) to find each customer's most recent delivered order
4	Customer status flag	Classifies each customer as Active or Inactive based on a 6-month cutoff (last_purchase_date <= '2024-06-30' or NULL)
5	Days since last purchase	Calculates DATE '2024-12-31' - last_purchase_date for every customer
6	Active vs. Inactive count	Aggregates the status flag into a summary count
7	Total revenue	Sums quantity * unit_price across all delivered order items
8	Revenue at risk	Sums revenue generated historically by customers who are now inactive
9	Customer Lifetime Value (CLV)	Total historical spend per customer, ranked highest to lowest
10	Average Order Value (AOV)	Total delivered revenue ÷ distinct delivered orders
11	Top 10 inactive customers by CLV	Surfaces the highest-value dormant customers — the priority re-engagement list
12	Inactive customers by state	Geographic breakdown of dormant customers
13	CLV segmentation	Buckets all customers into Low / Medium / High CLV tiers
14	Inactive customers by last purchase month	Cohort-style view of when customers went dormant
15	Average inactive days	Average time elapsed since last purchase, across all inactive customers
16	Revenue at risk by category	Breaks down at-risk revenue by product category, joining order_items → products → categories

All inactivity logic is anchored on a consistent rule: a customer is Inactive if their last delivered order was on or before 2024-06-30 (i.e., more than 6 months before the analysis date of 2024-12-31), or if they have never placed a delivered order at all.

🖥️ Power BI Dashboard

The Power BI dashboard (Dashboard/Inactive_Customer_Dashboard.pbix) turns the SQL output into a single interactive view for marketing and CRM teams, covering:

Headline KPIs: Total Customers, Active vs. Inactive Customers, Total Revenue, Revenue at Risk, Average Days Inactive, Average Order Value
Customer Segment by CLV — Low / Medium / High value tiers
Inactive Customers by State — geographic concentration of churn risk
Top 10 Inactive Customers by CLV — the priority outreach list
Revenue at Risk by Category — which product lines are most exposed to churn
Inactive Customers by Last Purchase Month — cohort view of when dormancy began

(Open the .pbix file in Power BI Desktop to explore the live dashboard — see How to Use.)

📌 Dashboard Metrics & Visuals
Metric / Visual	Purpose
Total Customers	Overall customer base size
Active Customers / Inactive Customers	Customers with vs. without a delivered purchase in the last 6 months
Customer Lifetime Value (CLV)	Historical total spend per customer
Revenue	Total revenue from delivered orders
Revenue at Risk	Historical revenue attributable to now-inactive customers
Average Days Inactive	How long, on average, dormant customers have been gone
Average Order Value (AOV)	Average revenue per delivered order
Customer Segment by CLV (chart)	Distribution of customers across Low/Medium/High value tiers
Inactive Customers by State (chart)	Where dormant customers are concentrated geographically
Top 10 Inactive Customers by CLV (chart)	Highest-value customers to prioritize for re-engagement
Revenue Risk by Category (chart)	Which product categories are most exposed to churn
Inactive Customers' Last Purchase Month (chart)	Timing pattern of when customers went dormant
🧩 SQL & BI Skills Demonstrated
Relational schema design with proper primary/foreign key constraints
Common Table Expressions (CTEs) for layered, readable analytical queries
Conditional aggregation (CASE inside MAX/SUM) to derive status flags and filtered totals
Date arithmetic and interval-based cutoffs for time-based segmentation
Customer Lifetime Value (CLV) and Average Order Value (AOV) calculation from transactional data
Multi-table joins across a 5-table schema (categories → products → order_items → orders → customers)
Power BI dashboard design translating SQL output into an executive-ready, interactive report
📂 Repository Structure
Identifying-Inactive-Customers/
│
├── README.md                                      # Project documentation (this file)
│
├── SQL/
│   └── inactive_customers_analysis.sql            # Schema creation, seed data, and full analytical query set
│
├── Dashboard/
│   └── Inactive_Customer_Dashboard.pbix           # Power BI dashboard file
│
└── Documentation/
    ├── Problem_Statement.docx                     # Business problem, objective, and key questions
    └── Dashboard_Metrics_Report.docx              # Metric definitions and query documentation (with SQL screenshots)
🚀 How to Use This Project
Clone or download this repository.
Run SQL/inactive_customers_analysis.sql in PostgreSQL (via pgAdmin or psql) to recreate the schema and seed data, then execute the analytical queries in sequence.
Open Dashboard/Inactive_Customer_Dashboard.pbix in Power BI Desktop to explore the interactive dashboard.
Refer to Documentation/Problem_Statement.docx for full business context and Documentation/Dashboard_Metrics_Report.docx for metric definitions.
🔮 Future Improvements
Automate the pipeline with a scheduled SQL job that refreshes customer status daily/weekly.
Add a 12-month inactivity view alongside the current 6-month definition for longer-term churn analysis.
Build a churn prediction model (Python/scikit-learn) to flag at-risk-but-still-active customers before they go dormant.
Integrate directly with a CRM/email platform to auto-generate the re-engagement outreach list.
Publish the dashboard to Power BI Service for live, shared access across marketing and CRM teams.
Add cohort retention curves to track how re-engagement campaigns perform over time.
👩‍💻 Author

Kamatchi Keerthika Data Analyst | SQL • Excel • Power BI • Tableau • Python 📍 Chennai, India

This project is part of a self-directed data analytics portfolio built to demonstrate end-to-end analytics capability — from relational database design to SQL analysis to business-ready BI dashboards.

⭐ If you found this project useful or interesting, consider starring the repository!
