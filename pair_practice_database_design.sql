-- initial work 
-- createing table for resturant locations 
create table locations(
location_id int auto_increment primary key,
name varchar(100),
address varchar(255));

--  creating table for menu items
create table menu_items(
item_id int auto_increment primary key,
name varchar(100),
price decimal(6,2));

 -- creating table for customers
 create table customers(
 customer_id int auto_increment primary key,
 name varchar(100),
 email varchar(255) unique);
 
 -- creating orders table that has foreing key
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    location_id INT,
    item_id INT,
    quantity INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
   --  FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (location_id) REFERENCES locations(location_id),
    FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
);



