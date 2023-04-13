/*
    Show the shipping fee for each item. Shipping fee is the maximum of (weight * $2) or $30.
*/

SELECT p.id, p.name, GREATEST(p.weight * 2 ,30) shipping_fee
FROM products p;

/*
    Show the on sale price for each item. On sale price is the least of (price * 0.5) or $400.
*/

SELECT p.id, p.name, LEAST(p.price * 0.5, 400) on_sale_price
FROM products p;
