--ORDER BY --> sorts the result set in ascending (ASC) or descending (DESC) 
--order based on one or more columns. By default, it sorts in ascending order.

--Example of sorting by price in ascending order:
SELECT name, price FROM products ORDER BY price ASC;

--Example of sorting by price in descending order:
SELECT name, price FROM products ORDER BY price DESC;