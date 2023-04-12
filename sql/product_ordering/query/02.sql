/*
    Show the average number of orders for all users.
*/

-- method 1
SELECT AVG(o.orders_count)  AS orders_users_ratio
FROM (
    SELECT user_id, COUNT(*) AS orders_count
    FROM orders
    GROUP BY orders.user_id
) AS o;

-- method 2
SELECT ( SELECT count(*) total_orders FROM orders ) / count(*) AS orders_users_ratio
FROM  users;
