use syntaxhrm_mysql;
## 16 Joins Introduction
### HW 16.1 Inner Joins
select * from orders;
select * from Customers;
select * from Products;
Select o.order_id, o.order_date, concat(first_name, ' ', last_name) as customer_name from orders o inner join Customers c on o.customer_id=c.customer_id;
### HW 16.2 Inner Joins with Multiple Tables


## 17. Left, Right, and Outer Joins in SQL
### HW 17.1
Select c.first_name, c.last_name, o.order_id, o.order_date  from orders o left join Customers c on o.customer_id=c.customer_id;


