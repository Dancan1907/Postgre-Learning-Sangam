--

DROP TABLE IF EXISTS basics.sales;
CREATE TABLE basics.sales (
    id SERIAL PRIMARY KEY,
    product VARCHAR(255) NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO basics.sales (product, amount) VALUES
('Laptop', 999.99),
('Smartphone', 499.99),
('Headphones', 199.99);

-- SELECT * FROM basics.sales;

SELECT * FROM basics.sales WHERE id = 1;

