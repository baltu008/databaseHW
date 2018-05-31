DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products
(
    item_id INTEGER NOT NULl AUTO_INCREMENT,
    product_name VARCHAR(225) NOT NULL,
    department_name VARCHAR(225) NOT NULL,
    price INTEGER(100) NOT NULL,
    stock_quantity INTEGER(100) NOT NULL,
    PRIMARY KEY(item_id)
)

-- PRODUCTS (product_name, department_name, price, stock_quantity)
INSERT INTO products
VALUES ('mixer', 'kitchen', 300, 30);

INSERT INTO products
VALUES ('bed sheets', 'bedroom', 39.99, 43);

INSERT INTO products
VALUES ('coffee mug', 'kitchen', 5.00, 17);

INSERT INTO products
VALUES ('coffee table', 'furniture', 87.99, 6);

INSERT INTO products
VALUES ('bicycle', 'outdoors', 399.99, 3);

INSERT INTO products
VALUES ('picture', 'home decor', 32.00, 7);

INSERT INTO products
VALUES ('rug', 'home decor', 62.89, 5);

INSERT INTO products
VALUES ('laptop charger', 'electronics', 79.99, 34);

INSERT INTO products
VALUES ('sleeping bag', 'outdoors', 45.00, 12);

INSERT INTO products
VALUES ('hammock', 'outdoors', 59.87, 34);


USE bamazon;
CREATE TABLE Departments(
DepartmentId int AUTO_INCREMENT,
PRIMARY KEY(DepartmentId),
DepartmentName varchar(50) NOT NULL,
OverHeadCosts DECIMAL(11,2) NOT NULL,
TotalSales DECIMAL(11,2) NOT NULL);


INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'kitchen',
10000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'bedroom',
10000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'kitchen',
20000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'furniture',
15000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'outdoors',
50000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'electronics',
25000,
0);


-- This creates the alias table TotalProfits that will exist only when requested by the executive 
SHOW TABLES;
CREATE VIEW bamazon.TotalProfits AS SELECT DepartmentId, DepartmentName, OverHeadCosts, TotalSales, TotalSales-OverHeadCosts AS TotalProfit FROM Departments;