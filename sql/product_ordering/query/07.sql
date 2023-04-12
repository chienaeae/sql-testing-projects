/*
    Show the name, department, and price of the most expensive product in each department
*/

-- method 1

SELECT p.name, p.department, p2.highest_product_price
FROM products p
JOIN (
    SELECT department, MAX(price) AS highest_product_price FROM products GROUP BY department
) AS p2 ON p2.department = p.department;

-- method 2

SELECT name, department, price
FROM products p1
WHERE p1.price = (
    SELECT MAX(p2.price) FROM products p2 WHERE p2.department = p1.department
);
