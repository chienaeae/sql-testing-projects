/* 
    Show rows where the user commented on photos that the same user posted.
    List photo's id and url, comment's content and also the name of the user. 
*/

SELECT p.id, p.url, c.contents, u.username FROM comments c
JOIN photos p ON c.photo_id = p.id
JOIN users u ON u.id = c.user_id AND u.id = p.user_id; 