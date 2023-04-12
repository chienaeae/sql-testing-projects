/*
    Show the posts and the its like count
*/
WITH posts_like_counts AS (
    SELECT post_id, COUNT(*) FROM likes GROUP BY post_id
)

SELECT p.id, p.caption, plc.count
FROM posts p
JOIN posts_like_counts plc ON plc.post_id = p.id;


/*
    Show the users who liked the post
*/ 
SELECT u.id, u.username
FROM users u
JOIN likes ON likes.user_id = u.id
WHERE likes.post_id = 1