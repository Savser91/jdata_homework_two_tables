CREATE TABLE ORDERS 
(
    id SERIAL PRIMARY KEY,
    date TIMESTAMP DEFAULT NOW(),
    customer_id INTEGER REFERENCES customers,
    product_name VARCHAR(255),
    amount INTEGER CHECK ( amount > 0 )
);