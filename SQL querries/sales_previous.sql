-- 2. Create a new column sales_previous displaying the sales of the previous row

SELECT *, 
       LAG("Sales", 1) OVER (ORDER BY "Order Date") AS sales_previous
FROM superstore_data;
