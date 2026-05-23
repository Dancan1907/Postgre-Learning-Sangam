--

CREATE EXTENSION IF NOT EXISTS "pgcrypto";
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    stock INT NOT NULL DEFAULT 0 CHECK (stock >= 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    sku TEXT UNIQUE NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (name, category, price, stock, sku, description) VALUES
('Laptop', 'Electronics', 999.99, 10, 'LAP-001', 'A high-performance laptop suitable for gaming and work.'),
('Smartphone', 'Electronics', 499.99, 20, 'SMP-001', 'A sleek smartphone with a powerful camera and long battery life.'),
('Headphones', 'Accessories', 199.99, 15, 'HDP-001', 'Noise-cancelling headphones with superior sound quality.'),
('Coffee Maker', 'Home Appliances', 79.99, 5, 'CMK-001', 'Brew the perfect cup of coffee with this easy-to-use coffee maker.'),
('Office Chair', 'Furniture', 149.99, 8, 'OFC-001', 'Ergonomic office chair designed for comfort during long work hours.');

SELECT * FROM products;