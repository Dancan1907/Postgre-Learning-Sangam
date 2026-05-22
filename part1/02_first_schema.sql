--db -> schema(Folder) -> tables ->rows
--Schema is a way to organize tables in a database. It is like a folder that contains tables.
-- It helps to keep the database organized and makes it easier to manage.
-- In this part, we will create a schema named first_schema inside the postgresql_part1 database. 
--You can use the following command to create the schema:
--IF NOT EXISTS is used to avoid errors if the schema already exists. It will only create the schema
-- if it does not exist.
CREATE SCHEMA IF NOT EXISTS first_schema;

--CREATE EXTENSION is used to create an extension in the database. An extension is a collection
-- of SQL objects that can be used to extend the functionality of the database. In this case, we 
--are creating the pgcrypto extension, which provides cryptographic functions. We will use the gen_random_uuid() 
--function from this extension to generate random UUIDs for our tables.
CREATE EXTENSION IF NOT EXISTS "pgcrypto"; -- for gen_random_uuid() function

--Query to check all schemas in the database
SELECT schema_name
FROM information_schema.schemata;
ORDER BY schema_name;

--TO run it run the following command in your terminal:
--psql -U your_username -d postgresql_part1 -f 02_first_schema.sql
--eg: psql -U postgres -d postgresql_part1 -f part1/02_first_schema.sql