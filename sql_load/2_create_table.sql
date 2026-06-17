/*
Step 2: Create Table
Create a table named sales with the following columns:
*/

CREATE TABLE sales(
    sale_id int,
    customer_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(30),
    category VARCHAR(30),
    product_name VARCHAR(50),
    payment_mode VARCHAR(20),
    quantity INT,
    price DECIMAL(10,2),
    rating DECIMAL (2,1),
    order_date date
);