use syntaxhrm_mysql;
select * from Products;
select * from customers;
select * from orders;
select * from orderitems;

## 12. Functions in SQL
### HW 12.1
select count(product_name) 'Total Products', avg(unit_price) 'Average Price', max(stock_quantity) 'Max Stock' from Products;

### HW 12.2
select concat(first_name," ", last_name) 'FullName' , length(email) 'email lenght' from customers;

## 13. GROUP BY Clause in SQL
### HW 13.1
select customer_id, count(total_amount) 'total orders', avg(total_amount) 'average order amount' from orders group by customer_id;

select order_id, product_id, count(quantity) 'total quantity' from orderitems group by order_id;

## 14. HAVING Clause in SQL
### HW 14.1
select customer_id, count(order_date) 'order count' from orders group by customer_id having count(order_date)>1;
### HW 14.2
select category_id, count(product_name) 'product count', avg(unit_price) 'avg price' from products group by category_id having avg(unit_price)>100;

## 15. Subqueries in SQL
### HW 15.1
select avg(unit_price) 'unit price' from Products;
select product_name , unit_price from products where unit_price>(select avg(unit_price) 'unit price' from Products);

### HW 15.2
select avg(total_amount) 'avg amount' from orders;
select customer_id, order_id, total_amount from orders where total_amount>(select avg(total_amount) 'avg amount' from orders);


