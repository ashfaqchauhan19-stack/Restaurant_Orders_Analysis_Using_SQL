create database restaurant_orders;
use restaurant_orders;

-- 1. Find the total revenue generated for each category.

select Category, sum(Quantity*Price) as total_revenue
from orders
group by Category;

-- 2. Retrieve all orders where the payment method is 'Cash'.

select * 
from orders
where Payment_Method = 'Cash';

-- 3. Find the top 3 customers who spent the most money overall.

select customer_name, sum(Price) as amount_spent
from orders
group by customer_name
order by amount_spent desc
limit 3;

-- 4. Get the total number of orders placed each day.

select Order_Time, Food_item, sum(Quantity) as orders_placed
from orders
group by Order_Time, Food_item;

-- 5. Display all records where quantity is greater than 2.

select *
from orders
where Quantity > 2;

-- 6. Find the most popular food item (highest total quantity sold).

select Food_Item, sum(Quantity) as highest_quantity_sold
from orders
group by Food_Item
order by highest_quantity_sold desc
limit 1;

-- 7. Calculate the average price of items for each category.

select Category, avg(Price) as avg_price
from orders
group by Category;

-- 8. List all unique payment methods used.

select distinct Payment_Method
from orders;

-- 9. Find the hour of the day with the highest number of orders.

select hour(Order_Time) as order_hour, count(*) as total_orders
from orders
group by order_hour
order by total_orders desc
limit 1;

-- 10. Get the total revenue for each payment method.

select Payment_Method, sum(Quantity*Price) as total_revenue
from orders
group by Payment_Method;

-- 11. Show all orders where the category is 'Beverage'.

select * 
from orders
where Category = 'Beverage';

-- 12. Find the top 5 most ordered food items (by number of orders, not quantity).

select Food_Item, sum(Quantity) as no_of_orders
from orders
group by Food_Item
order by no_of_orders desc
limit 5;

-- 13. Find customers who have placed more than 3 orders and show their total spending.

select Customer_Name, Food_Item, sum(Quantity) as no_of_orders, sum(Quantity*Price) as total_spending
from orders
group by Customer_Name, Food_Item
having no_of_orders > 3;

-- 14. Calculate the total quantity sold for each food item, sorted descending.

select Food_Item, sum(Quantity) as total_quantity_sold
from orders
group by Food_Item
order by total_quantity_sold desc;

-- Thank you:)
