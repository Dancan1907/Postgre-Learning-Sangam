
--To get products from a certain category, you can use the WHERE clause to filter the results. 
--For example, to get all products in the 'Electronics' category, you can run the following query:
--/prroducts?category=Electronics
SELECT name, category, price, stock FROM products WHERE category = 'Electronics';

--To get products with a price less than a certain amount, you can use the following query:
--/products?price_lt=100    
SELECT name, category, price, stock FROM products WHERE price < 100;

--To get products that are in stock, you can use the following query:
--/products?in_stock=true       
SELECT name, category, price, stock FROM products WHERE stock > 0;

--To get products that are active, you can use the following query:
--/products?is_active=true
SELECT name, category, price, stock FROM products WHERE is_active = TRUE;