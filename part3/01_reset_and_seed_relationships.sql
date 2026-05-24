--The statement below will reset the database by dropping all existing tables and--
 --then creatinge ones with the specified schema. It also includes the creation of the pgcrypto extension,
 --hich is necessary for generating UUIDs.
--pgcrypto is a PostgreSQL extension that provides cryptographic functions, including the ability to
--enerate random UUIDs. By using gen_random_uuid() as the default value for the id columns, we ensure that
--ach new record will have a unique identifier automatically generated when it is inserted into the database.
--his setup is essential for maintaining data integrity and establishing relationships between tables
--hrough foreign keys.
--Encryption/Decription functions provided by pgcrypto can also be used for securing sensitive data,
--uch as user information or confidential content, by allowing you to encrypt and decrypt data as needed.
--Random Data Generation: pgcrypto can be used to generate random data for testing purposes, such as 
--trings, numbers, or UUIDs, which can be useful for populating the database with sample data during
--evelopment or testing phases.
--UUIDS: The gen_random_uuid() function from pgcrypto is used to generate universally unique
--dentifiers (UUIDs) for the primary keys of the tables. This ensures that each record has a
--nique identifier, which is crucial for maintaining data integrity and establishing relationships
--etween tables through foreign keys. By using UUIDs, we can avoid potential conflicts that may arise
--ith auto-incrementing integer IDs, especially in distributed systems or when merging data from different sources.
--IF NOT EXISTS: The CREATE EXTENSION statement includes the IF NOT EXISTS clause, which prevents
--rrors if the pgcrypto extension is already installed in the database. This allows the script to
--e run multiple times without causing issues, making it more robust and easier to use during development and testing.

CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE
);

CREATE TABLE posts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'draft' CHECK (status IN ('draft', 'published')),
  published_at TIMESTAMPTZ,
  views INTEGER NOT NULL DEFAULT 0 CHECK (views >= 0)
);

CREATE TABLE comments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  post_id UUID NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  body TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE tags (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL UNIQUE
);

CREATE TABLE post_tags (
  post_id UUID NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
  tag_id UUID NOT NULL REFERENCES tags(id) ON DELETE CASCADE,
  PRIMARY KEY (post_id, tag_id)
);

--Insert sample data into the users table
INSERT INTO users (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com');

--Insert sample data into the tags table
INSERT INTO tags (name) VALUES
('Technology'),
('Programming'),
('Database');

--Insert sample data into the posts table
INSERT INTO posts (user_id, title, status) VALUES
((SELECT id FROM users WHERE email = 'alice@example.com'), 'My First Post', 'published'),
((SELECT id FROM users WHERE email = 'bob@example.com'), 'Another Post', 'published'),
((SELECT id FROM users WHERE email = 'charlie@example.com'), 'Yet Another Post', 'draft');

--Insert sample data into comments table
INSERT INTO comments (post_id, user_id, body) VALUES
((SELECT id FROM posts WHERE title = 'My First Post'), (SELECT id FROM users WHERE email = 'bob@example.com'), 'Very Clear Explanation'),
((SELECT id FROM posts WHERE title = 'Another Post'), (SELECT id FROM users WHERE email = 'alice@example.com'), 'Please add more examples'),
((SELECT id FROM posts WHERE title = 'Yet Another Post'), (SELECT id FROM users WHERE email = 'charlie@example.com'), 'Stay locked in');

--Insert sample data into post_tags (post_id, tag_id)
INSERT INTO post_tags (post_id, tag_id) VALUES
((SELECT id FROM posts WHERE title = 'My First Post'), (SELECT id FROM tags WHERE name = 'Technology')),
((SELECT id FROM posts WHERE title = 'My First Post'), (SELECT id FROM tags WHERE name = 'Database')),
((SELECT id FROM posts WHERE title = 'Another Post'), (SELECT id FROM tags WHERE name = 'Programming'));

