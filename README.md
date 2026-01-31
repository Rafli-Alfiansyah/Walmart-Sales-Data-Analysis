# Walmart Sales Data Analysis (SQL)
## Project Overview

This project involves building a retail analysis database to investigate sales performance for Walmart. By leveraging SQL, I analyzed a dataset of **6,435 entries** to identify top-performing years, the impact of weather on consumer behavior, and how macroeconomic variables like unemployment and inflation (CPI) correlate with weekly sales.

## Dataset Description

The dataset used is `Walmart_Sales.csv`, which contains historical sales data for 45 Walmart stores. Key columns include:

* **Store**: The store number.
* **Date**: The week of sales.
* **Weekly_Sales**: Sales for the given store.
* **Holiday_Flag**: Boolean (1 = Holiday week, 0 = Non-holiday week).
* **Temperature**: Temperature on the day of sale.
* **Fuel_Price**: Cost of fuel in the region.
* **CPI**: Consumer Price Index.
* **Unemployment**: Prevailing unemployment rate.

## Tools Used

* **Database Engine**: MySQL Server
* **Interface**: MySQL Workbench
* **Language**: SQL (Structured Query Language)

## SQL Key Features Implemented

* **Data Transformation**: Converting string dates to SQL `DATE` format using `STR_TO_DATE` and `ALTER TABLE`.
* **Aggregation**: Using `SUM()`, `AVG()`, and `COUNT()` to summarize large datasets.
* **Conditional Logic**: Implementing `CASE` statements to categorize weather patterns.
* **Filtering & Sorting**: Utilizing `WHERE`, `GROUP BY`, and `ORDER BY` to extract specific business insights.

## Business Questions Answered

1. Which year had the highest sales?
2. How was the weather during the year of the highest sales?
3. Does weather have a significant impact on sales?
4. Do sales rise near the holiday season every year?
5. What is the relationship between sales and macroeconomic variables (Fuel Price, CPI, Unemployment)?

## How to Run the Analysis

1. Create a schema named `walmart_retail`.
2. Import `Walmart_Sales.csv` using the Table Data Import Wizard.
3. Execute the preparation scripts to fix date formatting.
4. Run the analytical queries provided in the `analysis.sql` file.
