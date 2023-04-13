/*
    Show the total count of each photo with photo's id, url and its total count of comment.
*/

SELECT p.id, p.url, count(c.id) FROM photos p
JOIN comments c ON c.photo_id = p.id
GROUP BY p.id;