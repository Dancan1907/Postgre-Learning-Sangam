

DROP TABLE IF EXISTS basics.app_events; -- to avoid errors if the table already exists. It will only

CREATE TABLE basics.app_events (
    --uuid -> used to store universally unique identifiers. The gen_random_uuid() function generates a random UUID value for the id column. This ensures that each event has a unique identifier, which can be useful for tracking and referencing events in the application.
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    event_name TEXT NOT NULL,
    --JSONB -> used to store JSON data in a binary format. The JSONB data type allows for efficient storage and querying of JSON data. It is useful for storing event data that may have a flexible structure or varying attributes.    
    metadata JSONB DEFAULT '{}'::jsonb,
     --TIMESTAMP -> data type that can store both date and time information. The DEFAULT NOW() clause sets the default value of the created_at column to the current date and time when a new record is inserted into the table. This means that if a new event record is added without specifying a value for created_at, it will automatically be set to the current timestamp. Stores date and time when the record was created.
     --default now() -> means that if a new record is added without specifying a value for created_at, it will automatically be set to the current timestamp. This is useful for tracking when each event record was created.   
    created_at TIMESTAMP DEFAULT NOW()
);

-- Insert some sample data into the app_events table
INSERT INTO basics.app_events (event_name, metadata) VALUES
('user_signup', '{"user_id": "12345", "source": "website"}'),
('purchase', '{"user_id": "12345", "amount": 99.99, "currency": "USD"}'),
('page_view', '{"user_id": "67890", "page_url": "/home"}');

SELECT * FROM basics.app_events;

--
SELECT
    event_name,
    metadata->>'user_id' AS user_id, -- Extracting the user_id from the JSONB metadata
    created_at FROM basics.app_events;