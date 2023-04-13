/*
    Show the users who created the 10 most recent posts
*/

CREATE VIEW recent_posts AS (
    SELECT *
    FROM posts
    ORDER BY created_at DESC
    LIMIT 10
);

SELECT users.username, recent_posts.created_at FROM recent_posts
JOIN users ON users.id = recent_posts.user_id;

DROP VIEW recent_posts;

/*

The command below can create new post data to testify the view

INSERT INTO posts (url, caption, lat, lng, user_id) VALUES('http://lorempixel.com/640/480', 'rerum voluptatem saepe #users #magnolia @Carol73', -51, -107, 3877)
RETURNING id;
DELETE FROM posts WHERE id IN (12936, 12937);

*/