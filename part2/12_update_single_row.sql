
SELECT name, category, price, stock FROM products WHERE sku = 'TAB-001'; 
--get the product with the specified SKU

--To update the price and stock of the product with SKU 'TAB-001', you 
--can use the following UPDATE statement:
UPDATE products SET price = 279.99, stock = 20 WHERE sku = 'TAB-001';