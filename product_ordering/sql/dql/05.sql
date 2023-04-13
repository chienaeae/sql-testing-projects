/*
    Show the product that are not in the department, where there is any product with a price less than 500.
*/

SElECT p.id, p.name, p.price, p.department
FROM products p 
WHERE p.department NOT IN (
    SELECT department
    FROM products
    WHERE price < 500
);
