--Table stores information about the different stores in the company. Each store has a unique identifier, a name, and a location.

CREATE SCHEMA IF NOT EXISTS basics; --NOT EXITS IS USED TO AVOID ERRORS IF THE SCHEMA ALREADY EXISTS. IT WILL ONLY CREATE THE SCHEMA IF IT DOES NOT EXIST.  

CREATE TABLE IF NOT EXISTS basics.students (
    --creates an auto-incrementing integer column named id that serves as the primary key for the table.
    -- The SERIAL data type is a shorthand for creating an auto-incrementing integer column.  
    --1, -> 1, 2, 3, ...
    --primary key is a constraint that uniquely identifies each record in the table. It ensures 
    --that the values in the id column are unique and not null.   
    
    id SERIAL PRIMARY KEY,

    --text -> string data type that can store variable-length character data. The NOT NULL constraint ensures 
    --that every record must have a value for the name column, and it cannot be left empty or null.
    -- not null -> means that the column cannot have a null value. Every record must have a value for this column.

    name TEXT NOT NULL,

    --email -> string data type that can store variable-length character data. The NOT NULL constraint ensures
    -- that every record must have a value for the email column, and it cannot be left empty or null. The UNIQUE 
    --constraint ensures that all values in the email column are unique across the table, meaning no two records
    -- can have the same email address.
    --UNIQUE -> means that all values in the column must be unique across the table. No two records can have the
    -- same value in this column. No two students can have the same email address.

    email TEXT NOT NULL UNIQUE,

    --age -> integer data type that can store whole numbers. The CHECK constraint ensures that the value in the 
    --age column must be a non-negative integer (greater than or equal to 0).
    --CHECK -> means that the values in the column must satisfy the specified condition. Every student must 
    --have a valid age.

    age INTEGER CHECK (age >= 0),
   
   --TIMESTAMP -> data type that can store both date and time information. The DEFAULT NOW() clause sets the
   -- default value of the created_at column to the current date and time when a new record is inserted into the
   -- table. This means that if a new student record is added without specifying a value for created_at, it will 
   --automatically be set to the current timestamp. Stores date and time when the record was created.
   --default now() -> means that if a new record is added without specifying a value for created_at, it will 
   --automatically be set to the current timestamp. This is useful for tracking when each student record was created.
    created_at TIMESTAMP DEFAULT NOW()
);

--Insert some data into the students table
INSERT INTO basics.students (name, email, age) VALUES
('Max', 'max@example.com', 20),
('Dancan', 'dancan@example.com', 22),
('Versteppen', 'versteppen@example.com', 25);  

SELECT * FROM basics.students;