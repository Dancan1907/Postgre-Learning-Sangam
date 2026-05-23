--UPDATE --> modifies existing records in a table based on specified conditions.
--To update multiple rows in the products table, you can use the following UPDATE statement:

SELECT name, category, price, stock FROM products WHERE category = 'Electronics'; 
--get all products in the 'Electronics' category

--To increase the price of all products in the 'Electronics' 
--category by 10%, you can run the following UPDATE statement:
UPDATE products SET price = ROUND(price * 1.1, 2) WHERE category = 'Electronics';