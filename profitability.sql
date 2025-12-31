CREATE TABLE customer(
    customer_id TEXT PRIMARY KEY,
    customer_name TEXT
);

CREATE TABLE IF NOT EXISTS orders (
    order_id TEXT PRIMARY KEY,
    customer_id TEXT NOT NULL,
    order_date TEXT,
    ship_mode TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE IF NOT EXISTS order_items (
    order_id TEXT NOT NULL,
    product_id TEXT NOT NULL,
    product_name TEXT,
    category TEXT,
    sub_category TEXT,
    sales REAL,
    profit REAL,
    quantity INTEGER,
    discount REAL,
    PRIMARY KEY (order_id, product_id),
    
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE IF NOT EXISTS products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    sub_category TEXT
);