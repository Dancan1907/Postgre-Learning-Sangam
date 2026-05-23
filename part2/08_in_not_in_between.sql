-- IN --> value is present in the specified list
-- NOT IN --> value is not present in the specified list
-- BETWEEN --> value is within a specified range (inclusive)
-- NOT BETWEEN --> value is not within a specified range (inclusive)


SELECT name, price FROM products WHERE category IN ('Electronics', 'Accessories');
 --products in the specified categories   
SELECT name, price FROM products WHERE category NOT IN ('Electronics', 'Accessories');
 --products not in the specified categories

SELECT name, price FROM products WHERE price BETWEEN 100 AND 300;
 --products with price between 100 and 300 (inclusive)
SELECT name, price FROM products WHERE price NOT BETWEEN 100 AND 300; 
--products with price not between 100 and 300 (inclusive)
