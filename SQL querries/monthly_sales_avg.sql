-- 4a. Calculate the monthly sales average

SELECT DATE_TRUNC('month', "Order Date") AS month, 
       AVG("Sales") AS monthly_sales_avg
FROM superstore_data
GROUP BY month
ORDER BY month;
