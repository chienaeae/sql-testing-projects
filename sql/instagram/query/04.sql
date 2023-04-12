/*
    Show the most popular users - the user who were tagged the most 
*/

-- WITH tags AS (
--     SELECT user_id, COUNT(*)
--     FROM (
--             SELECT user_id
--             FROM photo_tags
--         UNION ALL
--             SELECT user_id
--             FROM caption_tags
--     ) AS t
--     GROUP BY user_id
-- )

-- SELECT username, count FROM tags
-- JOIN users ON users.id = tags.user_id
-- ORDER BY count DESC
-- LIMIT 1;


CREATE OR REPLACE VIEW tags AS (
    SELECT id, created_at, user_id, post_id, 'photo_tag' AS type FROM photo_tags
    UNION ALL
    SELECT id, created_at, user_id, post_id, 'caption_tag' AS type FROM caption_tags
);

SELECT u.username, COUNT(*) 
FROM tags
JOIN users u ON u.id = tags.user_id 
GROUP BY u.id 
ORDER BY count DESC 
LIMIT 1;

DROP VIEW tags
