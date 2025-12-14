CREATE DATABASE alx_book_store;
use alx_book_store;
create table Authors (
author_id INt primary key,
author_name varchar(215)
);
Create Table Books(
book_id INT primary key,
title VARCHAR(130),
author_id int,
price Double,
publication_date Date,
 FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
Create Table Customers(
customer_id Int Primary key,
customer_name varchar(215),
email varchar(215),
address TEXT
);
Create Table Orders(
order_id Int primary key,
customer_id Int,
order_date Date,
foreign key (customer_id) references Customers(customer_id)
);
create table Order_Details(
orderdetailid Int primary key,
order_id Int,
book_id Int,
quantity Double,
foreign key (order_id) references Orders(order_id),
foreign key (book_id) references Books(book_id)
);