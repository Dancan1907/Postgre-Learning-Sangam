

INSERT INTO products (name, category, price, stock, sku, description) VALUES
('Tablet', 'Electronics', 299.99, 25, 'TAB-001', 'A lightweight tablet with a vibrant display and long battery life.'),
('Smartwatch', 'Electronics', 199.99, 30, 'SWT-001', 'A stylish smartwatch with fitness tracking and notifications.'),
('Bluetooth Speaker', 'Accessories', 49.99, 50, 'BSP-001', 'Portable Bluetooth speaker with excellent sound quality.'),
('Air Purifier', 'Home Appliances', 129.99, 10, 'APU-001', 'Keep your indoor air clean with this efficient air purifier.'),
('Gaming Chair', 'Furniture', 249.99, 5, 'GMC-001', 'Comfortable gaming chair with adjustable features for long gaming sessions.');

--To check if the new rows have been inserted successfully, you can run the following SELECT statement:
SELECT name, category, price, stock, sku, description FROM products WHERE sku IN ('TAB-001', 'SWT-001', 'BSP-001', 'APU-001', 'GMC-001');
