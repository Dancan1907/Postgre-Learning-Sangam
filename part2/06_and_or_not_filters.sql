
--AND -> The AND operator is used to combine multiple conditions in a WHERE clause.
-- All conditions must be true for the row to be included in the result set.
--OR -> The OR operator is used to combine multiple conditions in a WHERE clause. 
--At least one condition must be true for the row to be included in the result set.
--NOT -> The NOT operator is used to negate a condition in a WHERE clause. 
--It returns true if the condition is false and false if the condition is true.

--products where category is 'Electronics' and price is less than 500
SELECT name, category, price FROM products WHERE category = 'Electronics' AND price < 500;

--products where category is 'Electronics' or price is less than 100
SELECT name, category, price FROM products WHERE category = 'Electronics' OR category = 'Accessories' OR price < 100;

--products where category is not 'Electronics'
SELECT name, category, price FROM products WHERE NOT category = 'Electronics';

--products where category is not 'Electronics' and price is less than 100
SELECT name, category, price FROM products WHERE NOT (category = 'Electronics' AND price < 100);
--products where category is not 'Electronics' or price is not less than 100
SELECT name, category, price FROM products WHERE NOT (category = 'Electronics' OR price < 100);