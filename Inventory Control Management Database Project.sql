-- Which year had the highest sales?
SELECT YEAR(Date) AS Sales_Year, SUM(Weekly_Sales) AS Total_Sales
FROM sales_data
GROUP BY Sales_Year
ORDER BY Total_Sales DESC;

-- How was the weather during the year of the highest sales?
SELECT YEAR(Date) AS Sales_Year, AVG(Temperature) AS Avg_Temp
FROM sales_data
WHERE YEAR(Date) = (
    SELECT YEAR(Date) FROM sales_data 
    GROUP BY YEAR(Date) ORDER BY SUM(Weekly_Sales) DESC LIMIT 1)
GROUP BY Sales_Year;

-- Impact of weather (Temperature) on sales?
SELECT 
    CASE 
        WHEN Temperature < 50 THEN 'Cold (<50°F)'
        WHEN Temperature BETWEEN 50 AND 80 THEN 'Mild (50-80°F)'
        ELSE 'Hot (>80°F)'
    END AS Weather_Category,
    AVG(Weekly_Sales) AS Avg_Weekly_Sales
FROM sales_data
GROUP BY Weather_Category;

-- Do sales rise near the holiday season every year?
SELECT Holiday_Flag, AVG(Weekly_Sales) AS Avg_Sales
FROM sales_data
GROUP BY Holiday_Flag
ORDER BY Avg_Sales DESC;
-- A '1' indicates a holiday week, '0' is a regular week.

-- Relationship with Macroeconomic Variables
SELECT 
    YEAR(Date) AS Year,
    AVG(Weekly_Sales) AS Avg_Sales,
    AVG(Fuel_Price) AS Avg_Fuel_Price,
    AVG(CPI) AS Avg_CPI,
    AVG(Unemployment) AS Avg_Unemployment
FROM sales_data
GROUP BY Year
ORDER BY Year DESC;