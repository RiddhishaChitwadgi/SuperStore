-- 3. Rank the data based on sales in descending order

SELECT *, 
       RANK() OVER (ORDER BY "Sales" DESC) AS sales_rank
FROM superstore_data;
