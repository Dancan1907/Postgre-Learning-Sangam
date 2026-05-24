
--calculate one result fromm many rows
--COUNT(DISTINCT id) -> Number of rows
--SUM() ->total value
--AVG() -> Average value
--MIN() -> smallest value
--MAX(MAX(value)-> largest/max value)

--admin dashboard, reports, analytics, admin panels

--Read all rows from a certain table

SELECT 
    COUNT(*) AS total_posts,
    COUNT(*) FILTER (WHERE status = 'published') AS published_posts,
    SUM(views) AS total_views,
    AVG(views) AS average_views,
    MIN(views) AS lowest_views,
    MAX(views) AS highest_views
FROM posts;
