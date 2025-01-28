use syntaxhrm_mysql
# Introductory SQL Homework Assignments: Part 2
## 7. Logical Operators
### HW 7.1
select product_name, unit_price, stock_quantity from Products where unit_price>50 and stock_quantity<100 ;
### HW 7.2
select order_id, status from Orders where status='Shipped' or status='Delivered';
## 8. NOT Operator in SQL
### HW 8.1
select product_name, category_id from Products where not category_id=1;
### HW 8.2
select order_id, status, total_amount from Orders where not status='Delivered' and total_amount>100;
### HW 9.1 IN Operator
select product_name, category_id from Products where category_id in(1, 3, 5);
### HW 9.2 IN Operator
select order_id, status from Orders where not status in('Shipped' , 'Delivered');
### HW 10.1 Between Operator
select product_name, unit_price from Products where unit_price between 20 and 100;
### HW 10.2 Between Operator
select order_id, order_date from Orders where order_date between '2023-03-01' and '2023-06-30';
### HW 11.1 LIKE Operator
select product_name from Products where product_name like '%phone%';
### HW 11.2 LIKE Operator
select first_name, last_name, phone_number from Customers where phone_number like '555-01__';