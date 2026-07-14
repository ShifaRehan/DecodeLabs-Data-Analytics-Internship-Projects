/*
===========================================================
Project 03 : SQL Data Analysis

Intern Name : Shifa Rehan
Organization: DecodeLabs
Database    : sales_db
Table       : cleaned_dataset

Objective:
Analyze a cleaned e-commerce sales dataset using SQL
to generate meaningful business insights through data
exploration, filtering, aggregation, and reporting.

===========================================================
*/


-- ===========================
-- Database Setup
-- ===========================

USE sales_db;

-- ===========================
-- Data Exploration
-- ===========================

SELECT *
FROM cleaned_dataset
LIMIT 10;

DESCRIBE cleaned_dataset;

-- ===========================
-- Data Quality Check
-- ===========================
SELECT
OrderID,
COUNT(*) AS Duplicate_Count
FROM cleaned_dataset
GROUP BY OrderID
HAVING COUNT(*) > 1;

SELECT 
COUNT(*) - COUNT(TotalPrice) AS Missing_TotalPrice,
COUNT(*) - COUNT(Quantity) AS Missing_Quantity,
COUNT(*) - COUNT(CustomerID) AS Missing_CustomerID
FROM cleaned_dataset;

-- ===========================
-- Basic Statistics
-- ===========================

SELECT COUNT(*) AS Total_Orders
FROM cleaned_dataset;

SELECT COUNT(DISTINCT CustomerID) AS Unique_Customers
FROM cleaned_dataset;

SELECT DISTINCT Product
FROM cleaned_dataset;

SELECT COUNT(DISTINCT Product) AS Total_Products
FROM cleaned_dataset;

SELECT
SUM(Quantity) AS Total_Items_Sold
FROM cleaned_dataset;

SELECT
ROUND(AVG(Quantity),2) AS Average_Items_Per_Order
FROM cleaned_dataset;

-- ===========================
-- Revenue Analysis
-- ===========================

SELECT ROUND(SUM(TotalPrice),2) AS Total_Revenue
FROM cleaned_dataset;

SELECT ROUND(AVG(TotalPrice),2) AS Average_Order_Value
FROM cleaned_dataset;

SELECT MAX(TotalPrice) AS Highest_Order
FROM cleaned_dataset;

SELECT MIN(TotalPrice) AS Lowest_Order
FROM cleaned_dataset;

-- ===========================
-- Filtered Analysis (WHERE)
-- ===========================

-- High-value orders
SELECT *
FROM cleaned_dataset
WHERE TotalPrice > 500;

-- Only delivered orders
SELECT *
FROM cleaned_dataset
WHERE OrderStatus = 'Delivered';

-- Product name pattern match 
SELECT *
FROM cleaned_dataset
WHERE Product LIKE '%Monitor%';

-- Orders in a specific date range
SELECT *
FROM cleaned_dataset
WHERE Date BETWEEN '2025-01-01' AND '2025-06-30';

-- ===========================
-- Product Analysis
-- ===========================

SELECT Product,
COUNT(*) AS Orders,
ROUND(AVG(UnitPrice),2) AS Average_Price,
ROUND(SUM(TotalPrice),2) AS Revenue
FROM cleaned_dataset
WHERE OrderStatus = 'Delivered'
GROUP BY Product
ORDER BY Revenue DESC;


-- ===========================
-- Payment Method Analysis
-- ===========================

SELECT PaymentMethod,
COUNT(*) AS Total_Orders
FROM cleaned_dataset
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;

-- ===========================
-- Order Status Analysis
-- ===========================

SELECT OrderStatus,
COUNT(*) AS Total_Orders
FROM cleaned_dataset
GROUP BY OrderStatus
ORDER BY Total_Orders DESC;

-- ===========================
-- HAVING Analysis
-- ===========================

-- Products generating more than a set revenue threshold
SELECT Product,
ROUND(SUM(TotalPrice),2) AS Revenue
FROM cleaned_dataset
WHERE OrderStatus = 'Delivered'
GROUP BY Product
HAVING Revenue > 10000
ORDER BY Revenue DESC;

-- Customers with more than 5 orders
SELECT CustomerID,
COUNT(*) AS Orders
FROM cleaned_dataset
GROUP BY CustomerID
HAVING Orders > 5
ORDER BY Orders DESC;

-- ===========================
-- Referral Source Analysis
-- ===========================

SELECT ReferralSource,
COUNT(*) AS Total_Orders,
ROUND(SUM(TotalPrice),2) AS Revenue
FROM cleaned_dataset
GROUP BY ReferralSource
ORDER BY Revenue DESC;

-- ========================
-- Coupon Code Analysis
-- ========================

SELECT CouponCode,
COUNT(*) AS Orders,
ROUND(SUM(TotalPrice),2) AS Revenue
FROM cleaned_dataset
GROUP BY CouponCode
ORDER BY Revenue DESC;

-- ==================
-- Top 10 Customers 
-- ==================

SELECT CustomerID,
COUNT(*) AS Orders,
ROUND(SUM(TotalPrice),2) AS Total_Spent
FROM cleaned_dataset
WHERE OrderStatus = 'Delivered'
GROUP BY CustomerID
ORDER BY Total_Spent DESC
LIMIT 10;

-- ===================================
-- Revenue Contribution % by Product
-- ==================================

SELECT Product,
ROUND(SUM(TotalPrice),2) AS Revenue,
ROUND(SUM(TotalPrice) * 100.0 / (SELECT SUM(TotalPrice) FROM cleaned_dataset), 2) AS Pct_Of_Total_Revenue
FROM cleaned_dataset
GROUP BY Product
ORDER BY Revenue DESC;

-- ===========================
--    Average Quantity Sold
-- ===========================

SELECT Product,
ROUND(AVG(Quantity),2) AS Average_Quantity
FROM cleaned_dataset
GROUP BY Product
ORDER BY Average_Quantity DESC;

-- ===========================
--   Monthly Revenue Trend
-- ===========================


SELECT
MONTH(STR_TO_DATE(Date,'%Y-%m-%d')) AS Month,
ROUND(SUM(TotalPrice),2) AS Revenue
FROM cleaned_dataset
GROUP BY MONTH(STR_TO_DATE(Date,'%Y-%m-%d'))
ORDER BY Month;

/*
===========================================================
BUSINESS INSIGHTS
===========================================================

1. The dataset contains a total of 1,200 orders from 1,189 unique customers.

2. The business generated a total revenue of $1,264,761.96, with an average order value of $1,053.97.

3. Chair generated the highest total revenue, while Phone had the highest average selling price

4. Online was the most frequently used payment method.

5. Cancelled orders accounted for the largest proportion of transactions, highlighting the need to investigate the factors contributing to order cancellations.

6. Instagram generated the highest number of customer referrals and contributed the most revenue.

7. A small group of customers accounted for a significant share of total sales, making them valuable repeat customers.

8. High-value orders (above 500) highlight strong demand for premium products.

9. Monthly revenue analysis showed that January recorded the highest sales.

10. These findings can support data-driven decision-making by helping the business optimize inventory management, improve marketing strategies, reduce order cancellations, and strengthen customer retention efforts.

===========================================================
*/




