CREATE TABLE IF NOT EXISTS customers (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE IF NOT EXISTS carts (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER
);

CREATE TABLE IF NOT EXISTS products (
  id INTEGER PRIMARY KEY,
  name TEXT,
  price INTEGER
);

CREATE TABLE IF NOT EXISTS carts_products (
  id INTEGER PRIMARY KEY,
  cart_id INTEGER,
  product_id INTEGER
);
