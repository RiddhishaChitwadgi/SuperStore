-- 5. Compare discounts on two consecutive days

SELECT "Order Date", 
       "Discount", 
       LAG("Discount", 1) OVER (ORDER BY "Order Date") AS previous_day_discount,
       LEAD("Discount", 1) OVER (ORDER BY "Order Date") AS next_day_discount
FROM superstore_data;
