-- Which menu has the most revenue?
.mode box
SELECT
  menu_name,
  menu_price,
  SUM(menu_price) AS Total_revenue
FROM menu
JOIN orders ON menu.menu_id = orders.menu_id
GROUP BY menu_price
ORDER BY Total_revenue DESC;

--Top 2 least ordered items.
.mode box
SELECT
  menu_name AS T5M,
  SUM(menu_price) AS Total_revenue
FROM Menu 
JOIN orders on menu.menu_id = orders.menu_id
GROUP BY menu_name
ORDER BY Total_revenue ASC
Limit 2;

-- Find the customer who has the most spending ?
.mode box
SELECT
  customer_name AS Ranking,
  customer_class AS Class,
  count(menu_price) AS Total_Quantity,
  SUM(menu_price) AS Total_Spending
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOin menu ON orders.menu_id = menu.menu_id
GROUP BY customer_name
ORDER BY Total_Spending DESC;

.read Others_orders.sql








