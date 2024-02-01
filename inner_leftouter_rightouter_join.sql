Create a table customer and order table: 

CREATE TABLE customer (
    id NUMBER,
    name VARCHAR(255),
    age NUMBER,
    address VARCHAR(255),
    salary NUMBER(10, 2)
);

CREATE TABLE orders (
    oid NUMBER,
    day DATE,
    customer_id NUMBER,
    amount NUMBER(10, 2)
);

a. Write a query to perform INNER JOIN for the above tables:

SELECT *
FROM customer
INNER JOIN orders ON customer.id = orders.customer_id;

b. Write a query to perform LEFT OUTER JOIN for the above tables:

SELECT *
FROM customer
LEFT OUTER JOIN orders ON customer.id = orders.customer_id;

c. Write a query to perform RIGHT OUTER JOIN for the above tables:

SELECT *
FROM customer
RIGHT OUTER JOIN orders ON customer.id = orders.customer_id;
