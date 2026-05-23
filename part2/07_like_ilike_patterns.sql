--like -case sensitive pattern matching
--ilike -case insensitive pattern matching
-- % - matches any sequence of characters (including zero characters)
-- _ - matches any single character
--the % after 'S' means that we are looking for products whose names start
-- with 'S' followed by any sequence of characters (or no characters at all).
-- The ILIKE version will match both 'S' and 's' at the beginning of the product
-- names, making it case-insensitive.
SELECT name, price FROM products WHERE name LIKE 'S%'; --products that start with 'S'
SELECT name, price FROM products WHERE name ILIKE 's%'; --products that start with 's' (case-insensitive)

--the % before 'e' means that we are looking for products whose names end with 'e' 
--preceded by any sequence of characters (or no characters at all). The ILIKE version
-- will match both 'E' and 'e' at the end of the product names, making it case-insensitive.
SELECT name, price FROM products WHERE name LIKE '%e'; --products that end with 'e'

--the % around 'phone' means that we are looking for products whose names contain the 
--substring 'phone' anywhere in the name. The ILIKE version will match both 'Phone' 
--and 'phone', making it case-insensitive.
SELECT name, price FROM products WHERE name LIKE '%phone%'; --products that contain 'phone'