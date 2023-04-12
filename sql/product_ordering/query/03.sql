/*
 Show the department with the highest average price products
*/

SELECT department, average_price
FROM (
    SELECT department, AVG(price) as average_price
    FROM products
    GROUP BY department
) AS d
ORDER BY average_price DESC
LIMIT 1