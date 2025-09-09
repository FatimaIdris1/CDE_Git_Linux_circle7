## Overview

CoreDataEngineers is diversifying into the sales of goods and services. To understand the competitive landscape, we analyzed Parch and Posey, a major competitor. Using PostgreSQL, we explored their sales, accounts, sales representatives, regions, and web events data to answer key business questions and uncover insights.

## Database Structure

The dataset (posey_db) consists of five main tables:

* accounts – company accounts with details of sales representatives  
* orders – all product orders with quantities and revenue  
* region – sales regions  
* sales_reps – sales representatives assigned to accounts and regions  
* web_events – customer interactions across web channels  

## Analysis Focus

We designed SQL queries to answer the following business questions:

1. Which 5 accounts have the most number of orders?  
2. Who are the top 3 sales reps for each region ranked by revenue?  
3. How is monthly revenue trending across years?  
4. Do accounts with more web events tend to place more or larger orders?  
5. Which regions generate the most revenue overall?  

## Repository Structure

```

analysis.sql   → All SQL queries for the analysis
/Results       → CSV outputs of query results
README.md      → Project documentation and insights

```

## Insights

* Top Accounts by Orders: The accounts with the highest number of orders show patterns of strong customer engagement and loyalty. These accounts are key targets for retention and upselling strategies.  

* Top 3 Sales Reps per Region: Sales reps contributing the most revenue vary by region, showing the impact of individual performance and regional market potential.  

* Monthly Revenue Trends: Revenue shows clear trends across years and months, allowing identification of peak periods that can inform marketing and sales planning.  

* Web Events vs Orders: Accounts with higher web engagement tend to place more and larger orders, highlighting the importance of digital interactions in driving sales.  

* Revenue by Region: Certain regions generate significantly more revenue than others, providing insight into market focus and potential areas for growth.  

## Tools Used

* PostgreSQL for querying and analysis  
* GitHub for version control and documentation  
