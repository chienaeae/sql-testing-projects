/* 
    Show the number of orders for each product
*/

-- method 1 (without using a join or a group by)

SELECT p.id, (
    SELECT COUNT(*) FROM orders o WHERE o.product_id = p.id 
) AS orders_count
FROM products p;

-- method 2

SELECT o.product_id, COUNT(*)
FROM orders o
GROUP BY o.product_id;
