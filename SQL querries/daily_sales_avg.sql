-- 4b. Calculate the daily sales average

SELECT DATE_TRUNC('day', "Order Date") AS day, 
       AVG("Sales") AS daily_sales_avg
FROM superstore_data
GROUP BY day
ORDER BY day;
