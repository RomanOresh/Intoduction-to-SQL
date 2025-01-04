CREATE DATABASE IF NOT EXISTS my_database;

USE my_database;

CREATE TABLE users
(
    id Int PRIMARY KEY AUTO_INCREMENT NOT NULL ,
    name VARCHAR(20),
    age INT CHECK (age > 0),
    email VARCHAR(50)
);


INSERT my_database.users( name, age, email)
VALUES ('John',30,'john@example.com'),
       ('Alice',25,'alice@example.com'),
       ('Bob',35,'bob@example.com');

SELECT * FROM users;

DELETE FROM users
WHERE name = 'Bob';

SELECT * FROM users;



