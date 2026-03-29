CREATE DATABASE retail_project;
USE retail_project;
SHOW TABLES;
SELECT * FROM `retail_sales project` LIMIT 15;
SELECT SUM(Sales) AS total_sales, SUM(Profit) AS total_profit FROM `retail_sales project`;

-- SALES BY CATEGORY
SELECT
 Category, 
 SUM(Sales) AS total_sales FROM `retail_sales project` GROUP BY Category 
 ORDER BY total_sales DESC;
 
 -- LOSS MAKING SUB-CATEGORY
 SELECT 
 `Sub-Category`,
 SUM(Profit) AS total_profit from `retail_sales project` GROUP BY `Sub-Category`
 ORDER BY total_profit ASC;
 
 --  Identify TOP 10 CUSTOMERS BASED ON SALES
 SELECT
 `Customer name`,
 SUM(Sales) AS total_sales FROM `retail_sales project` GROUP BY `Customer name`
 ORDER BY total_sales DESC LIMIT 10;
 
 -- SALES BASED ON REGION
 SELECT
 Region,
 SUM(Sales) AS total_sales FROM `retail_sales project` GROUP BY Region;
 
 -- SALES DURING DIFFERENT MONTHS OF THE YEAR
 select
 year(STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS year,
 month(STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS month,
 SUM(Sales) AS total_sales
 FROM `retail_sales project` GROUP BY year,month
 ORDER BY year,month;
