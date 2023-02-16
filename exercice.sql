 ---Create a database called public---
CREATE DATABASE public;
---Add two tables items and customer---
CREATE TABLE items
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price integer NOT NULL
);

CREATE TABLE customers
(
    id SERIAL PRIMARY KEY,
    lastname VARCHAR(100) NOT NULL,
    firstname VARCHAR(100) NOT NULL
);
---Add the following items to the items table---

INSERT INTO items(name,price)VALUES('Small Desk',100);
INSERT INTO items(name,price)VALUES('Large desk ',300);
INSERT INTO items(name,price)VALUES('Fan ',80);

---Add 5 new customers to the customers table---
INSERT INTO customers(lastname,firstname)VALUES('Greg','Jones');
INSERT INTO customers(lastname,firstname)VALUES('Sandra','Jones');
INSERT INTO customers(lastname,firstname)VALUES('Scott','Scott');
INSERT INTO customers(lastname,firstname)VALUES('Trevor','Green');
INSERT INTO customers(lastname,firstname)VALUES('Melanie','Johnson');

---All the items.---
SELECT * FROM items;
---All the items with a price above 80 (80 not included).---
SELECT * FROM items WHERE price > 80;
---All the items with a price below 300. (300 included)---
SELECT * FROM items WHERE price <= 300;
---All customers whose last name is ‘Smith’ (What will be your outcome?).---
SELECT * FROM customers WHERE nom='Smith';
--impossible parce que le nom Smith ne figure pas sur notre table customers

--All customers whose last name is ‘Jones’.---
SELECT * FROM customers WHERE lastname = 'Jones';
---All customers whose firstname is not ‘Scott’.--
SELECT * FROM customers WHERE firstname NOT LIKE'Scott';