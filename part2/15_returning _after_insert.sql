
--returning --> returns specified columns from the updated rows after an UPDATE statement
-- is executed. It allows you to see the changes made to the data without having to 
--run a separate SELECT query.

INSERT INTO products (name, category, price, stock, sku, description) VALUES
('Tablet', 'Electronics', 299.99, 25, 'TAB-001', 'A lightweight tablet with a vibrant display and long battery life.')

RETURNING name, category, price, stock, sku, description; 
--returns the inserted row with the specified columns