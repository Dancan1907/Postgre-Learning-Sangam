--Data Types in PostgreSQL
--Data types define the type of data that can be stored in a column of a table. They determine the kind of values that can be stored and the operations that can be performed on those values. Here are some common data types in PostgreSQL:   
--1. Integer (INT): Used to store whole numbers without decimal points. Example: 1, 2, 3, etc.
--2. Text (TEXT): Used to store variable-length character data. It can store strings
--3. Boolean (BOOLEAN): Used to store true or false values.
--4. Timestamp (TIMESTAMP): Used to store date and time information.
--5. UUID (UUID): Used to store universally unique identifiers.
--6. Numeric (NUMERIC): Used to store numbers with a fixed number of decimal places
--7. Array (ARRAY): Used to store an array of values of a specific data type.
--8. JSON (JSON): Used to store JSON data.
--In this part, we will create a table named students inside the basics schema. The students
-- table will have the following columns: id, name, email, age, and created_at. We will use different 
--data types for each column to demonstrate how to define them in PostgreSQL.

--DROP TABLE IF EXISTS basics.students; -- to avoid errors if the table already exists. It will only
-- drop the table if it exists. You can use this command to drop the students table if you want to recreate
-- it with different columns or data types.

-- Create schema if not exists
CREATE SCHEMA IF NOT EXISTS basics;

-- Create products_basics table
CREATE TABLE IF NOT EXISTS basics.products_basics (
    id SERIAL PRIMARY KEY,
    --string -> max length of 100 characters. The NOT NULL constraint ensures that every record must have a
    -- value for the name column, and it cannot be left empty or null. 
    name VARCHAR(100) NOT NULL,
    description TEXT,
    stock INTEGER DEFAULT 0,
    --bigint -> used to store large integers. The DEFAULT 0 clause sets the default value of the total_views column 
    --to 0 when a new record is inserted into the table. This means that if a new product record is added without 
    --specifying a value for total_views, it will automatically be set to 0. This is useful for tracking the number
    -- of views for each product
    total_views BIGINT DEFAULT 0,
    price NUMERIC(10, 2) CHECK (price >= 0),
     --CHECK -> means that the values in the column must satisfy the specified condition. Every product
     -- must have a valid price.
     --The NUMERIC(10, 2) data type is used to store numbers with a fixed number of decimal places. 
     --In this case, it can store numbers with up to 10 digits in total and 2 digits after the decimal point.
     -- This is useful for storing prices, as it allows for accurate representation of currency values.
     is_active BOOLEAN DEFAULT TRUE,
     created_at TIMESTAMP DEFAULT NOW()
     --BOOLEAN -> used to store true or false values. The DEFAULT TRUE clause sets the default
);

-- Queries 

INSERT INTO basics.products_basics (name, description, stock, total_views, price, is_active, created_at) VALUES
('Product A', 'Description for Product A', 100, 0, 19.99, TRUE, NOW()),
('Product B', 'Description for Product B', 50, 0, 29.99, TRUE, NOW()),
('Product C', 'Description for Product C', 200, 0, 9.99, TRUE, NOW());

SELECT * FROM basics.products_basics;
