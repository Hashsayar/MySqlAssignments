use syntaxhrm_mysql;
## 16 Joins Introduction
### HW 16.1 Inner Joins
select * from orders;
select * from Customers;
select * from Products;
Select o.order_id, o.order_date, concat(first_name, ' ', last_name) as customer_name from orders o inner join Customers c on o.customer_id=c.customer_id;
### HW 16.2 Inner Joins with Multiple Tables
select o.order_id, product_name, quantity, concat(first_name, ' ', last_name) as customer_name
from orders o
inner join customers c on c.customer_id=o.customer_id
inner join orderitems it on it.order_id=o.order_id
inner join products p on it.product_id=p.product_id;

## 17. Left, Right, and Outer Joins in SQL
### HW 17.1
select c.customer_id, concat(first_name, ' ', last_name) as customer_name, order_id, order_date from customers c left join orders o on c.customer_id=o.customer_id;

### HW 17.2
select p.product_id, product_name, order_id, quantity from orderitems its right join products p on p.product_id=its.product_id;

### HW 17.3
select c.customer_id, concat(first_name, ' ', last_name) as customer_name, order_id, order_date
from customers c left join orders o on c.customer_id=o.customer_id
union
select c.customer_id, concat(first_name, ' ', last_name) as customer_name, order_id, order_date
from customers c right join orders o on c.customer_id=o.customer_id;

## 18. Self Joins in SQL
### HW 18.1
select e.id as employee_id, concat(e.FirstName, ' ', e.LastName) as employee_name, concat(m.FirstName, ' ', m.LastName) as manager_name from person e left join person m on e.managerId=m.id;
