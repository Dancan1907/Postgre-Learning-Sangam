
--select * - returns all columns from the table, which can be inefficient if you only need specific columns. It can lead to slower query performance and increased resource usage, especially with large tables.
--select specific columns - allows you to retrieve only the necessary data, improving query performance and reducing resource usage. It also makes your queries more readable and easier to maintain.
--Example of using SELECT *:
--SELECT * FROM products;
--Example of selecting specific columns:
SELECT name, category, price, stock FROM products;

--AS creates an alias for a column or table, making it easier to read and understand the output. It can also be used to rename columns in the result set for better clarity.
--Example of using AS to create an alias for a column:  
SELECT name AS product_name, price AS product_price FROM products;
--Example of using AS to create an alias for a table: