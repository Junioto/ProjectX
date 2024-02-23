-- create table customers
create table customers (
  customer_id int,
  customer_name text,
  customer_class text,
  customer_gender text
);

-- insert data to table customers
insert into customers values
  (1, 'John Cassidy', 'Diamond', 'M'),
  (2, 'Mary Soe', 'Gold', 'F'),
  (3, 'Tom Heton', 'Platinum', 'M'),
  (4, 'Jerry Butler', 'Gold', 'M'),
  (5, 'Kate Jenzent', 'Gold', 'F');

.mode box
select * from customers;

-- create table menu
create table menu (
  menu_id text,
  menu_name text,
  category_type text,
  menu_price real
);

-- insert data to table menus
insert into menu values
  ('M001', 'Pizza', 'Mian Dish', 300),
  ('M002', "Hamburger", 'Mian Dish', 200),
  ('M003', 'Fried rice', 'Mian Dish', 150),
  ('M004', 'French fries', 'Appetizer', 80),
  ('M005', 'Nuggies', 'Appetizer', 80),
  ('M006', 'Water', 'Drinks', 20),
  ('M007', 'Beer', 'Drinks', 120),
  ('M008', 'Coke', 'Drinks', 30),
  ('M009', 'Stout', 'Drinks', 200);
;

select * from menu;

-- create table orders
create table orders (
  order_no int unique,
  menu_id text,
  order_date timestamp,
  customer_id int,
  payment_type text
);

-- insert data to table orders
insert into orders values
  (001, 'M001', '2023-08-01', 1, 'Credit Card'),
  (002, 'M002', '2023-08-01' , 1, 'Credit Card'),
  (003, 'M007', '2023-08-01', 3, 'Cash'),
  (004, 'M004', '2023-08-02', 2, 'Cash'),
  (005, 'M005', '2023-08-02', 2, 'Cash'),
  (006, 'M001', '2023-08-02', 2, 'Cash'),
  (007, 'M002', '2023-08-03', 2, 'Cash'),
  (008, 'M007', '2023-08-03', 3, 'Cash'),
  (009, 'M005', '2023-08-03', 2, 'Cash'),
  (010, 'M005', '2023-08-03', 2, 'Cash'),
  (011, 'M005', '2023-08-03', 2, 'Cash'),
  (012, 'M005', '2023-08-03', 3, 'Cash'),
  (013, 'M005', '2023-08-03', 2, 'Cash'),
  (014, 'M005', '2023-08-03', 1, 'Credit Card'),
  (015, 'M001', '2023-08-03', 1, 'Credit Card'),
  (016, 'M009', '2023-08-03', 1,'Credit Card')
;

select * from orders;
