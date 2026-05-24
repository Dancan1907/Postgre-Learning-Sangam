
--one post can have multiple tags
--one tag can be associated to multiple tags

--post.id === post_tags.post_id
--tags.id === post_tagstag_id

--show me every post with its tags
SELECT 
    posts.title AS post_title,
    tags.name AS tag_name
FROM posts
INNER JOIN post_tags 
    ON posts.id = post_tags.post_id
INNER JOIN tags
    ON post_tags.tag_id = tags.id
ORDER BY posts.title, tags.name;
