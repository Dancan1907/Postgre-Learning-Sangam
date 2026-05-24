--Foreign key --> constraint that links one table to another. It enforces a
--elationship between rows in two tables, ensuring referential integrity —
-- meanin data stays consistent across tables.

--users.id  parent key
--post.id foreign key
-- every post  u create must belong to an existing user

SELECT id, name FROM users;

SELECT id, user_id, title FROM posts;