-- Questions that we have to answer
-- 1. Total of a cart
-- 2. Who is my most valuable customer
-- 3. Products in a cart

-- Total of cart
SELECT SUM(products.price) AS cart_total FROM carts_products
JOIN products ON carts_products.product_id = products.id
WHERE carts_products.cart_id = 2;

-- Products in a cart
SELECT products.name AS cart_products, products.price FROM carts_products
JOIN products ON carts_products.product_id = products.id
WHERE carts_products.cart_id = 2;

-- Most valuable customer
-- Our valuable customer is determined by the customer who has the highest total by adding all the carts of the customer

SELECT customers.name AS most_valuable_customer, SUM(products.price) as total_of_all_carts FROM customers
JOIN carts ON customers.id = carts.customer_id
JOIN carts_products ON carts.id = carts_products.cart_id
JOIN products ON carts_products.product_id = products.id
GROUP BY customers.id
ORDER BY total_of_all_carts DESC LIMIT 1
