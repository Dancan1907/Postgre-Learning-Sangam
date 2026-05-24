
--one parent rows can have many child rows
--one user can have 1,2,3,4,5,6,7,8,9,... posts
--one post always belongs to one user
--users - parent table
--posts chile table

--posts.user_id -> user.id
--users.id is the original user id
--posts.user_id stores that original user id into posts tables

--Show all posts with their authors
SELECT 
 users.name AS author_name,
 posts.title AS post_title,
 posts.status
 FROM users
 INNER JOIN posts
 ON users.id = posts.user_id
 ORDER  BY users.name, posts.title;