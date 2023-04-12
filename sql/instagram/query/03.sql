/*
    Show suggestion users for user_id 1000, and the depth should be smaller than 3
    Suggestion users are meant to be those users who have been following by users you (e.g. user_id = 1000) have following.
*/

WITH RECURSIVE suggestions(leader_id, follower_id, depth) AS (
        SELECT leader_id, follower_id, 1 AS depth
        FROM followers
        WHERE follower_id = 1000
    UNION
        SELECT followers.leader_id, followers.follower_id, depth + 1
        FROM followers
        JOIN suggestions ON suggestions.leader_id = followers.follower_id
        WHERE depth < 3
)
SELECT DISTINCT users.id, users.username
FROM suggestions
JOIN users on users.id = suggestions.leader_id
WHERE depth > 1
LIMIT 30;