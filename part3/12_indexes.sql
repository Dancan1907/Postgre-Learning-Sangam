--index help postgres find rows faster
--SELECT -> SPEEDS UP THIS PARTICULAR PROCESS

SELECT  
 id,
 title,
 status,
 views, 
 user_id
FROM posts;

--/posts?status=published

SELECT
 id,
 title,
 status
FROM posts
WHERE status = 'published';

--create index
--idx -index
--posts -> table name
--status -> column name


CREATE INDEX IF NOT EXISTS idx_posts_status
ON posts(status);

SELECT
 title,
 status,
 views
FROM posts
WHERE status = 'published'
ORDER BY views DESC;

--COMPOSITE INDEX
CREATE INDEX IF NOT EXISTS idx_posts_status_views
ON posts(status, views);

-- /users/:id/posts
SELECT 
 title,
 status,
 views
FROM posts
WHERE user_id = (
    SELECT id
    FROM id
    WHERE name = 'Bob'
)

CREATE INDEX IF NOT EXISTS idx_posts_user_id
ON posts(user_id);