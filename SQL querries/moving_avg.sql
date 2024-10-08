-- 6. Calculate a 3-day moving average of sales

SELECT "Order Date", 
       "Sales", 
       AVG("Sales") OVER (ORDER BY "Order Date" 
                          ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg_3_day
FROM superstore_data;
