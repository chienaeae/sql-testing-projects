/*
    Show the users who were tagged in a caption or photo before January 1st, 2015.
    Also show the date they were tagged.
*/

-- Common Table Expression(CTE)
WITH tags AS (
    SElECT user_id, created_at FROM photo_tags
    UNION
    SELECT user_id, created_at FROM caption_tags
)

SElECT username, tags.created_at
FROM users
JOIN tags ON tags.user_id = users.id
WHERE tags.created_at > '2015-01-01';