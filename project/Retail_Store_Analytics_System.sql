-- Part A – Basic SQL Queries --

-- Q1. Display all records from the sales table.

SELECT *
FROM sales;


-- Q2. Display only customer names. 

SELECT 
    customer_name
FROM 
    sales;


-- Q3. Display customer names and cities. 

SELECT 
    customer_name,
    city
FROM
    sales;


-- Q4. Display product names and prices.

SELECT 
    product_name,
    price
FROM
    sales;


-- Q5. Display all unique cities. 

SELECT distinct
    city
FROM 
    sales;


-- Q6. Display all unique categories.

SELECT distinct
    category
FROM
    sales;


--- Q7. Display all unique payment methods. 

SELECT distinct
    payment_mode
FROM
    sales;


-- Q8. Display all male customers.

SELECT 
    customer_name,
    gender
FROM
    sales
WHERE
    gender = 'Male';


-- Q9. Display all female customers. 

SELECT 
    customer_name,
    gender
FROM
    sales
WHERE
    gender = 'Female';


-- Q10. Display customer name and rating. 

SELECT 
    customer_name,
    rating
FROM
    sales;





-- Part B – WHERE Clause 

-- Q11. Display all customers from Pune. 

SELECT
    customer_name,
    city
FROM
    sales
WHERE
    city = 'Pune';


-- Q12. Display all customers from Mumbai. 


SELECT
    customer_name,
    city
FROM
    sales
WHERE
    city = 'Mumbai';


-- Q13. Display all Electronics products.

SELECT 
    category,
    product_name
FROM
    sales
WHERE
    category = 'Electronics';

-- Q14. Display all Fashion products. 

SELECT 
    category,
    product_name
FROM
    sales
WHERE
    category = 'Fashion';


-- Q15. Display all Sports products. 

SELECT 
    category,
    product_name
FROM
    sales
WHERE
    category = 'Sports';


-- Q16. Display products with price greater than 5000. 

SELECT
    product_name,
    price
FROM
    sales
WHERE
    price > 5000;


-- Q17. Display products with price less than 5000.

SELECT
    product_name,
    price
FROM
    sales
WHERE
    price < 5000;


-- Q18. Display customers whose age is greater than 25. 

SELECT
    customer_name,
    age
FROM
    sales
WHERE
    age > 25;


-- Q19. Display customers whose age is less than 25. 

SELECT
    customer_name,
    age
FROM
    sales
WHERE
    age < 25;


-- Q20. Display products with rating greater than 4.5. 

SELECT
    product_name,
    rating
FROM
    sales
WHERE
    rating > 4.5;


-- Q21. Display all UPI transactions. 

SELECT
    product_name,
    payment_mode,
    price
FROM
    sales
WHERE
    payment_mode = 'UPI';


-- Q22. Display all Card transactions. 

SELECT
    product_name,
    payment_mode,
    price
FROM
    sales
WHERE
    payment_mode = 'Card';


-- Q23. Display all Cash transactions. 

SELECT
    product_name,
    payment_mode,
    price
FROM
    sales
WHERE
    payment_mode = 'Cash';


Q24. Display Electronics products from Pune. 

SELECT
    product_name,
    city
FROM
    sales
WHERE
    city = 'Pune' AND
    category = 'Electronics';


-- Q25. Display Fashion products from Mumbai. 

SELECT
    product_name,
    category,
    city
FROM
    sales
WHERE
    city = 'Mumbai' AND
    category = 'Fashion';


-- Q26. Display Female customers from Delhi. 

SELECT
    customer_name,
    gender,
    city
FROM
    sales
WHERE
    gender = 'Female' AND
    city = 'Delhi';


-- Q27. Display Male customers from Pune. 

SELECT
    customer_name,
    gender,
    city
FROM
    sales
WHERE
    gender = 'Male' AND
    city = 'Pune';


-- Q28. Display products priced between 2000 and 10000. 

SELECT
    product_name,
    price
FROM
    sales
WHERE
    price BETWEEN 2000 AND 10000;


-- Q29. Display customers aged between 24 and 30. 

SELECT
    customer_name,
    age
FROM
    sales
WHERE
    age BETWEEN 24 AND 30;


-- Q30. Display orders placed after 20 January 2026.

SELECT
    product_name,
    order_date
FROM
    sales
WHERE
    order_date > '2026-01-20';





-- Part C – ORDER BY, LIMIT and OFFSET 

-- Q31. Sort products by price in ascending order. 

SELECT
    product_name,
    price
FROM
    sales
ORDER BY
    price;


-- Q32. Sort products by price in descending order. 

SELECT
    product_name,
    price
FROM
    sales
ORDER BY
    price desc;


-- Q33. Sort customers by age in ascending order. 

SELECT
    customer_name,
    age
FROM
    sales
ORDER BY
    age;

-- Q34. Sort customers by age in descending order. 

SELECT
    customer_name,
    age
FROM
    sales
ORDER BY
    age desc;


-- Q35. Sort products by rating in descending order.

SELECT
    product_name,
    rating
FROM
    sales
ORDER BY
    rating desc;


-- Q36. Display the highest priced product. 

SELECT
    product_name as highest_priced_product,
    price
FROM
    sales
WHERE
    price = (SELECT
                max(price) 
            FROM
                sales);


-- Q37. Display the lowest priced product. 

SELECT
    product_name as lowest_priced_product,
    price
FROM
    sales
WHERE
    price = (SELECT
                min(price)
            FROM
                sales);


-- Q38. Display the highest rated product. 

SELECT
    product_name as highest_rated_product,
    rating
FROM
    sales
WHERE
    rating = (SELECT
                max(rating)
            FROM
                sales);


-- Q39. Display the latest order. 

SELECT
    product_name,
    order_date
FROM
    sales
ORDER BY
    order_date desc
LIMIT 1;

-- Q40. Display the oldest order. 

SELECT
    product_name,
    order_date
FROM
    sales
ORDER BY
    order_date 
LIMIT 1;


-- Q41. Display the top 5 records. 

SELECT
    *
FROM
    sales
LIMIT 5;


-- Q42. Display the top 3 most expensive products.

SELECT
    product_name,
    price
FROM
    sales
ORDER BY
    price desc
LIMIT 3;


-- Q43. Display the top 5 highest rated products. 

SELECT
    product_name,
    rating
FROM
    sales
ORDER BY
    rating desc
LIMIT 5;


-- Q44. Display the second highest priced product. 

SELECT
    product_name,
    price
FROM
    sales
ORDER BY
    price desc
OFFSET 1
LIMIT 1;


-- Q45. Display the third highest priced product. 

SELECT
    product_name,
    price
FROM
    sales
ORDER BY
    price desc
OFFSET 2
LIMIT 1;


-- Q46. Skip the first 5 rows and display the next records. 

SELECT *
FROM
    sales
OFFSET 5;


-- Q47. Display rows 6 to 10. 

SELECT *
FROM
    sales
OFFSET 5
LIMIT 5;


-- Q48. Display rows 11 to 15. 

SELECT *
FROM
    sales
OFFSET 10
LIMIT 5;


-- Q49. Display rows 16 to 20. 

SELECT *
FROM 
    sales
OFFSET 15
LIMIT 5;


-- Q50. Display the top 3 latest orders.

SELECT 
    product_name,
    order_date
FROM 
    sales
ORDER BY
    order_date desc
LIMIT 3;





-- Part D – Aggregate Functions 

-- Q51. Find the total number of orders. 

SELECT
    Count(sale_id) AS Total_number_of_orders
FROM
    sales;


-- Q52. Find the total sales revenue. 

SELECT
    sum(price) AS total_sales_revenue
FROM
    sales;


-- Q53. Find the average sales amount. 

SELECT
    avg(price) AS average_sales_amount
FROM
    sales;


-- Q54. Find the maximum sales amount. 

SELECT
    max(price) AS max_sales_amount
FROM
    sales;


-- Q55. Find the minimum sales amount. 

SELECT
    min(price) AS min_sales_amount
FROM
    sales;


-- Q56. Find the highest rating. 

SELECT
    max(rating) AS highest_rating
FROM
    sales;


-- Q57. Find the lowest rating. 

SELECT
    min(rating) AS lowest_rating
FROM
    sales;


-- Q58. Find the average rating.

SELECT
    avg(rating) AS average_rating
FROM
    sales;


-- Q59. Find the total quantity sold. 

SELECT
    sum(quantity) AS total_quantity_sold
FROM
    sales;


-- Q60. Find the average quantity sold. 

SELECT
    avg(quantity) AS average_quantity_sold
FROM
    sales;


-- Q61. Find the maximum quantity sold. 

SELECT
    max(quantity) AS max_quantity_sold
FROM
    sales;


-- Q62. Find the minimum quantity sold. 

SELECT
    min(quantity) AS min_quantity_sold
FROM
    sales;


-- Q63. Count the number of Electronics products. 

SELECT
    count(category) AS all_electronic_products
FROM
    sales 
WHERE
    category = 'Electronics';


-- Q64. Count the number of Fashion products. 

SELECT
    count(category) AS all_fashion_products
FROM
    sales 
WHERE
    category = 'Fashion';

-- Q65. Count the number of Sports products. 

SELECT
    count(category) AS all_Sport_products
FROM
    sales 
WHERE
    category = 'Sports';



-- Part E – String Functions 

-- Q66. Convert all customer names to uppercase. 

SELECT
    upper(customer_name)
FROM
    sales;


-- Q67. Convert all customer names to lowercase. 

SELECT
    lower(customer_name)
FROM
    sales;


-- Q68. Find the length of each customer name. 

SELECT
    customer_name,
    length(customer_name)
FROM
    sales;

    
-- Q69. Find the length of each city name. 

SELECT
    city,
    length(city)
FROM
    sales;


-- Q70. Combine customer name and city in one column. 

SELECT
    CONCAT(customer_name, ' - ', city) AS customer_with_city
FROM 
    sales;


-- Q71. Replace the letter 'a' with '@' in customer names. 

SELECT 
    REPLACE(customer_name, 'a', '@') AS modified_name
FROM 
    sales;


-- Q72. Replace the letter 'e' with '*' in customer names. 

SELECT 
    REPLACE(customer_name, 'e', '*') AS modified_name
FROM 
    sales;


-- Q73. Remove extra spaces using TRIM().

SELECT 
    TRIM(customer_name) AS trimmed_name
FROM 
    sales;


-- Q74. Display the first 3 letters of each customer name. 

SELECT 
    customer_name,
    substring(customer_name,1, 3) AS first_3_letters
FROM 
    sales;


-- Q75. Display the last 2 letters of each city name.

SELECT 
    customer_name,
    substring(customer_name,length(customer_name) -1, 3) AS first_3_letters
FROM 
    sales;





-- Part F – Numeric and Date Functions 

-- Q76. Round all prices. 

SELECT
    Round(price)
FROM
    sales;


-- Q77. Apply CEIL() on prices. 

SELECT
    CEIL(price)
FROM
    sales;


-- Q78. Apply FLOOR() on prices.

SELECT
    FLOOR(price)
FROM
    sales;


-- Q79. Find MOD(quantity,2). 

SELECT 
    MOD(quantity,2)
FROM
    sales;


-- Q80. Find MOD(quantity,3). 

SELECT 
    MOD(quantity,3)
FROM
    sales;


-- Q81. Display the current date. 

SELECT 
    current_date;

-- Q82. Display the current time. 

SELECT 
    current_time;

-- Q83. Display the current timestamp. 

SELECT 
    current_timestamp;

-- Q84. Extract the year from order_date.

SELECT
    EXTRACT(YEAR FROM order_date) AS year
FROM
    sales;


-- Q85. Extract the month from order_date. 

SELECT
    EXTRACT(MONTH FROM order_date) AS month
FROM
    sales;


-- Q86. Extract the day from order_date. 

SELECT
    EXTRACT(DAY FROM order_date) AS day
FROM
    sales;


-- Q87. Display orders placed in January. 

SELECT *
FROM 
    sales
WHERE 
    EXTRACT(MONTH FROM order_date) = 1;


-- Q88. Display orders placed before 20 January 2026. 

SELECT *
FROM 
    sales
WHERE
    order_date < '2026-01-20';


-- Q89. Display orders placed after 20 January 2026.

SELECT *
FROM 
    sales
WHERE
    order_date > '2026-01-20';


-- Q90. Display the latest order date. 

SELECT *
FROM 
    sales
ORDER BY
    order_date desc
LIMIT 1;




-- Part G – UPDATE and DELETE 

-- Q91. Update the city of Akash. 

UPDATE 
    sales
SET 
    city = 'nagpur'
WHERE
    customer_name = 'Akash';


-- Q92. Update the rating of Rahul. 

UPDATE 
    sales
SET 
    rating = '9.9'
WHERE
    customer_name = 'Rahul';


-- Q93. Change all Card payments to UPI. 

UPDATE
    sales
SET
    payment_mode = 'UPI'
WHERE
    payment_mode = 'Card';


-- Q94. Increase all product prices by 500. 

UPDATE 
    sales
SET
    price = price + 500;


-- Q95. Decrease all product prices by 100. 

UPDATE 
    sales
SET
    price = price - 100;


-- Q96. Change category Electronics to Gadgets. 

UPDATE
    sales
SET
    category = 'Gadgets'
WHERE
    category = 'Electronics';


-- Q97. Change city Pune to Nagpur. 

UPDATE
    sales
SET
    city = 'Nagpur'
WHERE
    city = 'Pune';
    

-- Q98. Update the quantity of a selected product. 

UPDATE
    sales
SET
    quantity = '5'
WHERE
    product_name = 'Laptop';


-- Q99. Update a product name. 

UPDATE
    sales
SET
    product_name = 'PC'
WHERE
    product_name = 'Laptop';


-- Q100. Update a customer name. 

UPDATE
    sales
SET
    customer_name = 'Prakash'
WHERE
    customer_name = 'Akash';


-- Q101. Delete a specific customer record. 

DELETE FROM
    sales
WHERE
    customer_name = 'Riya';


-- Q102. Delete all Sports category records. 

DELETE from
    sales
WHERE
    category = 'Sports';


-- Q103. Delete records with rating below 4.0.

DELETE FROM
    sales
WHERE rating < 4.0;


-- Q104. Delete all Cash payment records. 

DELETE FROM
    sales
WHERE
    payment_mode = 'Cash';


-- Q105. Delete records from Jaipur. 

DELETE FROM 
    sales
WHERE
    city = 'Jaipur'





-- Part H – GROUP BY 

-- Q106. Display city-wise order count. 

SELECT
    city,
    count(sale_id) AS city_wise_order_count
FROM
    sales
GROUP BY
    city;


-- Q107. Display category-wise order count. 

SELECT
    category,
    count(sale_id) AS category_wise_order_count
FROM
    sales
GROUP BY
    category;


-- Q108. Display payment mode-wise order count. 

SELECT
    payment_mode,
    count(sale_id) AS payment_mode_wise_order_count
FROM
    sales
GROUP BY
    payment_mode;


-- Q109. Display gender-wise order count. 

SELECT
    gender,
    count(sale_id) AS gender_wise_order_count
FROM
    sales
GROUP BY
    gender;


-- Q110. Display city-wise total revenue. 

SELECT
    city,
    sum(price * quantity) AS city_wise_total_revenue
FROM
    sales
GROUP BY
    city;


-- Q111. Display category-wise total revenue. 

SELECT
    category,
    sum(price * quantity) AS category_wise_total_revenue
FROM
    sales
GROUP BY
    category;


-- Q112. Display payment mode-wise total revenue.

SELECT
    payment_mode,
    sum(price * quantity) AS payment_mode_wise_total_revenue
FROM
    sales
GROUP BY
    payment_mode;


-- Q113. Display city-wise average revenue. 

SELECT
    city,
    avg(price * quantity) AS city_wise_average_revenue
FROM
    sales
GROUP BY
    city;


-- Q114. Display category-wise average revenue.

SELECT
    category,
    avg(price * quantity) AS category_wise_average_revenue
FROM
    sales
GROUP BY
    category;


-- Q115. Display city-wise maximum sale. 

SELECT
    city,
    max(price * quantity) AS city_wise_max_sale
FROM
    sales 
GROUP BY
    city;


-- Q116. Display city-wise minimum sale. 

SELECT
    city,
    min(price * quantity) AS city_wise_min_sale
FROM
    sales 
GROUP BY
    city;


-- Q117. Display category-wise maximum sale.

SELECT
    category,
    max(price * quantity) AS category_wise_max_sale
FROM
    sales 
GROUP BY
    category;


-- Q118. Display category-wise minimum sale. 

SELECT
    category,
    min(price * quantity) AS category_wise_min_sale
FROM
    sales 
GROUP BY
    category;

-- Q119. Display city and category-wise revenue. 

SELECT
    city,
    category,
    sum(price * quantity) AS revenue
FROM
    sales
GROUP BY
    city,
    category;


--Q120. Display city and payment mode-wise revenue. 

SELECT
    city,
    payment_mode,
    sum(price * quantity) AS revenue
FROM
    sales
GROUP BY
    city,
    payment_mode;





-- Part I – HAVING Clause 

-- Q121. Display cities having total revenue greater than 50,000. 

SELECT
    city,
    sum(price * quantity) as revenue
FROM
    sales
GROUP BY
    city
HAVING
    sum(price * quantity) > 50000;


-- Q122. Display categories having total revenue greater than 60,000. 

SELECT
    category,
    sum(price * quantity) as revenue
FROM
    sales
GROUP BY
    category
HAVING
    sum(price * quantity) > 60000;


-- Q123. Display cities having average sale greater than 10,000. 

SELECT
    city,
    avg(price * quantity) as avg_sales
FROM
    sales
GROUP BY
    city
HAVING
    avg(price * quantity) > 10000;


-- Q124. Display categories having average rating greater than 4.5. 

SELECT
    category,
    avg(rating) AS average_rating
FROM
    sales
GROUP BY
    category
HAVING
    avg(rating) > 4.5;


-- Q125. Display cities having more than 3 orders. 

SELECT
    city,
    count(quantity) AS orders 
FROM
    sales
GROUP BY
    city
HAVING
    count(quantity) > 3;


-- Q126. Display categories having more than 2 orders. 

SELECT
    category,
    count(sale_id) AS orders 
FROM
    sales
GROUP BY
    category
HAVING
    count(sale_id) > 2;


-- Q127. Display payment modes having more than 5 orders. 

SELECT
    payment_mode,
    count(sale_id) as orders 
FROM
    sales
GROUP BY
    payment_mode
HAVING
    count(sale_id) > 5;


-- Q128. Display cities having maximum sale greater than 40,000. 

SELECT
    city,
    max(price * quantity) AS max_sales
FROM
    sales
GROUP BY
    city
HAVING
    max(price * quantity) > 40000;


-- Q129. Display categories having minimum sale greater than 1,500. 

SELECT
    category,
    min(price * quantity) AS min_sales
FROM
    sales
GROUP BY
    category
HAVING
    min(price * quantity) > 1500;


-- Q130. Display cities having average age greater than 25.

SELECT
    city,
    avg(age) AS average_age
FROM
    sales
GROUP BY
    city
HAVING
    avg(age) > 25;





-- Part J – WHERE + GROUP BY + HAVING 

-- Q131. Display city-wise revenue for UPI transactions. 

SELECT
    city,
    sum(price * quantity) AS revenue
FROM
    sales
WHERE
    payment_mode = 'UPI'
GROUP BY
    city;


-- Q132. Display city-wise revenue for Electronics products. 

SELECT
    city,
    sum(price * quantity) AS revenue
FROM
    sales
WHERE
    category = 'Electronics'
GROUP BY
    city;


-- Q133. Display city-wise revenue generated by female customers. 

SELECT
    city,
    sum(price * quantity) AS revenue
FROM
    sales
WHERE
    gender = 'Female'
GROUP BY
    city;


-- Q134. Display city-wise revenue for orders above 5,000. 

SELECT
    city,
    sum(price * quantity) AS revenue
FROM
    sales
WHERE
    (price * quantity) > 5000
GROUP BY
    city;



-- Q135. Display cities where revenue from orders above 5,000 exceeds 50,000.

SELECT
    city,
    sum(price * quantity) AS revenue
FROM
    sales
WHERE
    (price * quantity) > 5000
GROUP BY
    city
HAVING
    sum(price * quantity) > 50000;


-- Q136. Display categories with more than 2 UPI orders. 

SELECT
    category,
    count(sale_id) as orders 
FROM
    sales
WHERE
    payment_mode = 'UPI'
GROUP BY
    category
HAVING
    count(sale_id) > 2;


-- Q137. Display categories where Card payment revenue exceeds 10,000. 

SELECT
    category,
    sum(price * quantity) AS revenue
FROM
    sales
WHERE
    payment_mode = 'Card'
GROUP BY
    category
HAVING
    sum(price * quantity) > 10000;


-- Q138. Display category-wise count of products having rating above 4.5.

SELECT
    category,
    count(sale_id) AS products_count
FROM
    sales
WHERE
    rating > 4.5
GROUP BY
    category;


-- Q139. Display city-wise revenue generated by customers older than 25. 

SELECT
    city,
    sum(price * quantity) AS revenue
FROM
    sales
WHERE
    age > 25
GROUP BY
    city;


-- Q140. Display cities where revenue generated by customers older than 25 exceeds 20,000. 

SELECT
    city,
    sum(price * quantity) AS revenue
FROM
    sales
WHERE
    age > 25
GROUP BY
    city
HAVING
    sum(price * quantity) > 20000;
    




-- Final Business Reports 

-- Q141. Identify the city generating the highest revenue. 

SELECT
    city,
    max(price * quantity) AS highest_revenue
FROM
    sales
GROUP BY
    city
ORDER BY
    max(price * quantity) DESC
LIMIT 1;


-- Q142. Identify the category generating the highest revenue. 

SELECT
    category,
    max(price * quantity) AS highest_revenue
FROM
    sales
GROUP BY
    category
ORDER BY
    max(price * quantity) DESC
LIMIT 1;


-- Q143. Find the most frequently used payment method. 

SELECT
    payment_mode,
    count(payment_mode)
from
    sales
GROUP BY
    payment_mode
ORDER BY
    count(payment_mode) DESC
LIMIT 2;


-- Q144. Find the best-rated category. 

SELECT
    category,
    max(rating) as best_rated
from
    sales
GROUP BY
    category
ORDER BY
    max(rating) DESC
LIMIT 1;



-- Q145. Find the highest spending customer. 

SELECT
    customer_name,
    sum(price * quantity) AS money_spend
FROM
    sales
GROUP BY
    customer_name
ORDER BY
    sum(price * quantity) DESC
LIMIT 1;

-- Q146. Find the most popular product. 

SELECT
    product_name,
    sum(quantity) AS popular_product
FROM
    sales
GROUP BY
    product_name
ORDER BY
    sum(quantity) DESC
LIMIT 1;


-- Q147. Display the top 3 cities by revenue. 

SELECT
    city,
    sum(price * quantity) AS revenue
FROM
    sales
GROUP BY
    city
ORDER BY
    sum(price * quantity) DESC
LIMIT 3;


-- Q148. Display the top 3 categories by revenue. 

SELECT
    category,
    sum(price * quantity) AS revenue
FROM
    sales
GROUP BY
    category
ORDER BY
    sum(price * quantity) DESC
LIMIT 3;


-- Q149. Generate a monthly sales summary report. 
/*
During January 2026, the business processed 20 orders and sold 35 units,
generating a total revenue of ₹209,900. The month demonstrates strong sales performance,
primarily driven by high-value electronics purchases.
The average order value is approximately ₹10,495, indicating
a healthy revenue contribution per transaction.

(also mentioned in readme file)
*/


-- Q150. Generate a complete business performance report using all concepts learned so far.
/* 
The business generated a total revenue of ₹209,900 from 20 completed orders. Pune emerged 
as the highest revenue-generating city, while Electronics was the top-performing category, 
contributing the largest share of total revenue. Digital payment methods such as UPI and Card
 were preferred by customers over Cash. Customer feedback remained positive, with an average 
 rating of 4.44/5, indicating a high level of satisfaction. The analysis suggests that 
 Electronics products are the primary growth driver of the business, and Pune represents
 the strongest market for future expansion. Continued focus on digital payments, customer 
 experience, and high-demand product categories can further improve business performance


Key Insights
Total business revenue: ₹209,900
Highest revenue city: Pune (₹137,400)
Highest revenue category: Electronics (₹165,000)
Most used payment methods: UPI and Card (8 orders each)
Total orders processed: 20
Average customer rating: 4.44

These queries combine the major concepts practiced:
 GROUP BY, HAVING, WHERE, COUNT, SUM, AVG, ORDER BY, LIMIT, filtering, aggregation, and reporting.

(also mentioned in readme file)
*/

