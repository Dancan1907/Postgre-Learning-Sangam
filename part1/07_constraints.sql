--NOT NULL, UNIQUE, PRIMARY KEY, CHECK, FOREIGN KEY
--app, script, developer

DROP TABLE IF EXISTS basics.accounts; -- to avoid errors if the table already exists.
-- It will only be dropped if it exists.
CREATE TABLE basics.accounts (
    id SERIAL PRIMARY KEY, -- automatically generates a unique identifier for each account.
    -- It serves as the primary key for the table, ensuring that each account can be uniquely identified.
    full_name TEXT NOT NULL UNIQUE, -- ensures that the full name cannot be null and must be
    -- unique across all accounts. This means that every account must have a full name, and no two accounts
    -- can have the same full name.
    email TEXT NOT NULL UNIQUE, -- ensures that the email cannot be null and must be u
    --nique across all accounts. This means that every account must have an email address, and no two
    -- accounts can have the same email address.
    password TEXT NOT NULL, -- ensures that the password cannot be null. This means that every account
    -- must have a password.
    is_active BOOLEAN DEFAULT TRUE, -- sets the default value of is_active to true when a new
    -- account is created. This means that when a new account is added to the table, it will be active 
    --by default unless explicitly set to false.
    age INTEGER CHECK (age >= 18), -- ensures that the age must be 18 or older. This means that any attempt 
    --to insert or update an account with an age less than 18 will result in an error, 
    --enforcing the constraint that accounts must belong to individuals who are at least 18 years old.
    created_at TIMESTAMP DEFAULT NOW() -- sets the default value of created_at to the
    -- current timestamp when a new account is created. This allows you to track when each account was created.
);

INSERT INTO basics.accounts (full_name, email, password, age) VALUES
('Alice Smith', 'alice@example.com', 'password123', 25);

SELECT * FROM basics.accounts;