--LIMIT --> limits the number of rows returned by a query.
--OFFSET --> skips a specified number of rows before starting to return rows from the query.
--Example of using LIMIT to get the top 5 most expensive products:
SELECT name, price FROM products ORDER BY price DESC LIMIT 5;

--Example of using OFFSET to skip the top 5 most expensive products and get the next 5:
SELECT name, price FROM products ORDER BY price DESC OFFSET 5 LIMIT 5;

--pagination example: to get the second page of products with 10 products per page,
-- you can use the following query:
SELECT name, price FROM products ORDER BY price DESC OFFSET 10 LIMIT 10; 
--skips the first 10 products and returns the next 10 products for the second page