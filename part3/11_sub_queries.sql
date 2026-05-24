
--running one query inside another query

--runs the inner query first b4 the 
--outer query

--which posts are performing better than the average

SELECT
    title,
    status,
    views
FROM posts
WHERE views > (
    SELECT AVG(views)
    FROM posts
)
ORDER BY views DESC;
