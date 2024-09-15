-- 1. Create a new column sales_next displaying the sales of the next row

SELECT *, 
       LEAD("Sales", 1) OVER (ORDER BY "Order Date") AS sales_next
FROM superstore_data;
