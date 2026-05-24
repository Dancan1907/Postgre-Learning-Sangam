-- left join keeps all rows from the left table
-- Consider you have 2 tables ie left table & right table
--if the right table has matching data, postgresSQL includes that
--if it doesn't have any matching data it returns null

--posts --> Left table
--comments --> right table
--because  not every post is going to have comments some can be 0 or 100 views

SELECT 
posts.title AS post_title,
comments.body AS body
FROM posts
LEFT JOIN comments
ON posts.id = comments.post_id --Connecting each post which its comments
ORDER BY posts.title;


