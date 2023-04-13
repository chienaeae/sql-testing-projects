/*
    Show the product and a descirption of the product's price.
    If price > 600 then 'high', else if price < 300 then 'medium', else 'cheap'.
*/

SELECT
    name,
    price,
    CASE
        WHEN price > 600 THEN 'high'
        WHEN price < 300 THEN 'medium'
        ELSE 'cheap'
    END AS price_desc
FROM products
