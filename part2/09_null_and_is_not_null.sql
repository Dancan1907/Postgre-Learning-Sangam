-- NULL --> missing or unknown value
-- IS NULL --> checks if a value is NULL    
-- IS NOT NULL --> checks if a value is not NULL

SELECT name, description FROM products WHERE description IS NULL; 
--products with no description
SELECT name, description FROM products WHERE description IS NOT NULL; 
--products with a description

