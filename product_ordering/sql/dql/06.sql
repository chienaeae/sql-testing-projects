/*
    Show the products that are more expensive than all products in the 'Industrial' department.
*/

-- method 1

SELECT p.id, p.name, p.price, p.department
FROM products p
WHERE p.id IN (
    SELECT id FROM products WHERE price > (
        SELECT MAX(price) FROM products WHERE department = 'Industrial'
    )
);

-- method 2

SELECT p.id, p.name, p.price, p.department
FROM products p
WHERE p.price > ALL (
    SELECT price FROM products WHERE department = 'Industrial'
);


/*
    Show the products that are more expensive than at least one product in the 'Industrial' department.
*/

SELECT p.id, p.name, p.price, p.department
FROM products p
WHERE p.price > ANY (
    SELECT price FROM products WHERE department = 'Industrial'
);
