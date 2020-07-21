INSERT INTO customers (name) VALUES
('avi'),
('sunny'),
('ali');

INSERT INTO products (name, price) VALUES
('iphone', 2),
('macbook', 4),
('iwatch', 3),
('ipad', 7);

INSERT INTO carts (customer_id) VALUES
(1),
(2),
(3),
(1);

INSERT INTO carts_products (cart_id, product_id) VALUES
(1, 1),
(1, 3),
(2, 4),
(2, 2),
(2, 1),
(3, 2),
(4, 4);
