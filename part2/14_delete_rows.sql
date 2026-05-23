--delete
--DELETE --> removes existing records from a table based on specified conditions.
--To delete a single row from the products table, you can use the following 
--DELETE statement:Sign in to enable AI completions, or disable inline completions in Settings (DBCode > AI).

INSERT INTO products (name, category, price, stock, sku, description) VALUES
('Tablet', 'Electronics', 299.99, 25, 'TAB-001', 'A lightweight tablet with a vibrant display and long battery life.'),
('Smartwatch', 'Electronics', 199.99, 30, 'SWT-001', 'A stylish smartwatch with fitness tracking and notifications.'),
('Bluetooth Speaker', 'Accessories', 49.99, 50, 'BSP-001', 'Portable Bluetooth speaker with excellent sound quality.'),
('Air Purifier', 'Home Appliances', 129.99, 10, 'APU-001', 'Keep your indoor air clean with this efficient air purifier.'),
('Gaming Chair', 'Furniture', 249.99, 5, 'GMC-001', 'Comfortable gaming chair with adjustable features for long gaming sessions.');

--To delete the product with SKU 'TAB-001', you can run the following DELETE statement:
DELETE FROM products WHERE sku = 'TAB-001';