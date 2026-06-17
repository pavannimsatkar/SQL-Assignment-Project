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
    LEFT(customer_name, 3) AS first_3_letters
FROM 
    sales;


-- Q75. Display the last 2 letters of each city name.

SELECT 
    RIGHT(customer_name, 2) AS last_2_letters
FROM 
    sales;






