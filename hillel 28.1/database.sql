CREATE DATABASE IF NOT EXISTS sales_database;

CREATE TABLE sales_database.sales (
                                      id INT PRIMARY KEY AUTO_INCREMENT,
                                      product VARCHAR(30),
                                      price INT,
                                      quantity INT
);

INSERT sales_database.sales(product, price, quantity)
VALUES ('Laptop', 1000, 5),
       ('Phone', 700, 3),
       ('Tablet', 500, 2),
       ('Printer', 300, 4);

SELECT * FROM sales_database.sales;

SELECT * FROM sales_database.sales LIMIT 2;

SELECT SUM(price * quantity) AS total_value FROM sales_database.sales;

SELECT
    product,
    SUM(quantity) AS total_quantity,
    AVG(price) AS average_price
FROM sales_database.sales
GROUP BY product;


