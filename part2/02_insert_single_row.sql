
--INSERT INTO products (name, category, price, stock, sku, description) VALUES
--('Tablet', 'Electronics', 299.99, 25, 'TAB-001', 'A lightweight tablet with a vibrant
-- display and long battery life.');

--To check  if the new row has been inserted successfully, you can run the 
--following SELECT statement:
SELECT * FROM products WHERE sku = 'TAB-001';