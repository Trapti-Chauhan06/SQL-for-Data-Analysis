use ecommerce;
select * from orders;
# WHERE Clause
select * from orders
where sales > 500;
# WHERE with AND
select * from orders where sales > 1000 and Region = "East";
# ORDER BY
# Descendingg Order
select * from orders 
order by sales desc;
# Ascending Order
select * from orders order by city asc;
# GROUP BY
select category from orders 
group by category;
select * from orders group by region;
select category, 
SUM(sales) as TotalSales 
from orders 
group by category;
select region, 
AVG(profit) as AvgProfit 
from orders 
group by region;
# Aggregate Functions
select count(*) as TotalOrders 
from orders;
select SUM(sales) as TotalSales 
from orders;
select AVG(sales) as AvgSales 
from orders;
select MAX(sales) 
from orders;
select MIN(sales) 
from orders;
# HAVING 
select category,
SUM(sales) as TotalSales
from orders 
group by category
having SUM(sales) > 10000;
# Correct Order
SELECT Category, SUM(Sales) AS TotalSales
FROM orders
WHERE Sales > 1000
GROUP BY Category
HAVING SUM(Sales) <= 100000
ORDER BY Category DESC;
# SUBQUERIES
select * from orders
where sales > ( Select AVG(Sales) from orders);
# VIEW
Create View HighSales As 
Select * from orders where sales > 1000;
select * from HighSales;
# INDEX
create index idx_category on orders(Category(100));
create index idx_region on orders(region(50));
select * from customers;
# INNER JOIN
select 
o.customer_id,c.customer_name,o.sales
from orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;
# LEFT JOIN
select o.order_id,o.customer_id,c.customer_name,o.sales
from orders o 
LEFT JOIN customers c
ON o.customer_id = c.customer_id;
# RIGHT JOIN
select o.order_id,o.customer_id, c.customer_name, o.sales
from orders o
RIGHT JOIN customers c
ON o.customer_id = c.customer_id;
# Cross Join
SELECT
o.order_id,c.customer_name
FROM orders o
CROSS JOIN customers c;



