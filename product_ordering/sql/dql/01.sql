/*
    Show the 4 products with the hightest price, and also show the 4 products with the highest (price/weight) ratio.
*/

(
    SELECT * FROM products
    ORDER BY price DESC
    LIMIT 4
)
INTERSECT ALL
(
    SELECT * FROM products
    ORDER BY price / weight DESC
    LIMIT 4
)