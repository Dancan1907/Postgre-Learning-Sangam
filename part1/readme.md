VERSION 1.0 01(22) 02(70)
RELATIONAL DB -> tables
tables connected using relationships

users tables
posts tables
comments tables

1 post -> 1 user
1 comment -> 1 post
1 user -> many tables

NON RELATIONAL DB -> Does not organise data using connected tables 
documents, key value pairs

data has clear structure, relationships, transactions, joins, strong validation at db level

eg creating a banking app, eccommerce, CRM App  use RELATIONAL DB

NON-RELATIONAL when your data changes often - docs independent, not much joins.

01_first_db.sql
CREATE A NEW DATABASE 
   Run the command "psql -U postgres -d -f part/01_first_db.sql"

  psql ->This is the PostgreSQL interactive terminal (client).
       It lets you connect to a PostgreSQL database and run SQL commands.
  -U postgres -> -U specifies the username you want to connect with.
            Here, you’re connecting as the user postgres (the default superuser created when PostgreSQL is installed).
  -d postgres -> -d specifies the database name you want to connect to.
               In this case, you’re connecting to the postgres database (the default database that comes with PostgreSQL).
               ⚠️ In your typed command earlier, you had -d -f ... without a database name after -d. That would cause an error. You must provide a database name (like postgres or ecommerce).

  -f part1/01_first_db.sql -> -f tells psql to execute commands from a file instead of typing them manually.
                            Here, it will read and run all SQL statements inside the file:

   Code  -> part1/01_first_db.sql

  psql → the client program
 -U → which user to connect as
-d → which database to connect to
 -f → which SQL file to execute


// TO CONNECT TO THE DB THAT IS ALREADY CREATED 
  RUN "psql -U postgres -d postgresql_part1"
   psql -> The PostgreSQL client program.
      It opens a connection to a database so you can run SQL commands interactively.
 -U postgres -> -U specifies the username.
      Here you’re logging in as the postgres user (the default superuser).
 -d postgresql_part1 ->
     -d specifies the database name you want to connect to.
    In this case, you’re connecting to a database called postgresql_part1.
     ⚠️ This database must already exist. If you haven’t created it yet, you’ll get an error like “database does not exist.”

EXPORT YOUR PASSWORD TO AVOID RETYPING EVERY TIME RUN THE COMMAND 
export PGPASSWORD="your_password_here"

psql -U postgres -d postgresql_part1
       THEN
//THINGS YOU CAN CHECK
 (1) CURRENT DB YOU'RE USING run  SELECT current_database();
 (2) CURRENT USER run SELECT current_user;
 (3) CURRENT POSTGRES VERSION BEING USED  run SELECT version();
 (4) TO SEE ALL DBS I HAVE run\l
 (5) TO SEE ALL YOUR TABLES run \dt
 (6) EXIT CONNECTION run \q


SCHEMA
  is a folder inside your database

  //CREATE YOU SCHEMA/FIRST SCHEMA
  