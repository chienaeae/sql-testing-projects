/*
    Show the orders that involve a product with a price/weight ratio greater than 5
*/

-- method 1

SELECT o.id
FROM orders o
WHERE o.product_id in (
    SELECT id FROM products WHERE price/weight > 5 
);

-- method 2

SELECT o.id, p.name
FROM orders o
JOIN products p ON o.product_id = p.id AND p.price/p.weight > 5 