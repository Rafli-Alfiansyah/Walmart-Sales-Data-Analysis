# Walmart Sales Data Analysis (SQL)

![inbox_16192307_cffdbe90e777479a7cfca50b15a20f4e_Walmart5-scaled-1](https://github.com/user-attachments/assets/9fee1f8a-d98f-4565-8f32-42df0e63e147)

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
   
| Sales_Year | Total_Sales        |
|------------|--------------------|
| 2012       | 2000132859.3500023 |
| 2010       | 2288886120.41      |
| 2011       | 2448200007.3499975 |

2. How was the weather during the year of the highest sales?

| Sales_Year | Avg_Temp          |
|------------|-------------------|
| 2011       | 58.79852991452998 |

3. Does weather have a significant impact on sales?

| Weather_Category | Avg_Weekly_Sales   |
|------------------|--------------------|
| Cold (<50°F)     | 1096272.2478167093 |
| Mild (50-80°F)   | 1052478.062883904  |
| Hot (>80°F)      | 942056.5296783353  |

4. Do sales rise near the holiday season every year?

| Holiday_Flag | Avg_Sales          |
|--------------|--------------------|
| 1            | 1122887.8923555554 |
| 0            | 1041256.3802088564 |

5. What is the relationship between sales and macroeconomic variables (Fuel Price, CPI, Unemployment)?

| Year | Avg_Sales          | Avg_Fuel_Price     | Avg_CPI            | Avg_Unemployment  |
|------|--------------------|--------------------|--------------------|-------------------|
| 2012 | 1033660.3924289418 | 3.709776227390185  | 175.49878085974206 | 7.347963824289391 |
| 2011 | 1046239.3193803409 | 3.561914957264957  | 171.54571597658062 | 8.082035897435933 |
| 2010 | 1059669.5001898147 | 2.8237671296296383 | 168.1017815130093  | 8.492714351851921 |
