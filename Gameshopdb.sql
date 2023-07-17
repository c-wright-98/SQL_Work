CREATE DATABASE gameshopDB;

USE gameshopDB;

CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    Name VARCHAR(200),
    Email VARCHAR(200),
    Phone BIGINT);

CREATE TABLE Games (
    ID INT PRIMARY KEY,
    Title VARCHAR(200),
    R_Date DATE,
    InStock INT);

CREATE TABLE orders(
    ID INT PRIMARY KEY,
    OrderNumber INT,
    CustomerID int,
    ProductID INT,
    FOREIGN KEY (CustomerID) REFERENCES customers(ID),
    FOREIGN KEY (ProductID) REFERENCES games(ID),
    OrderDate DATE);

-- Ignore this show show to alter table, 
-- productID is not needed in the Customers table as it is referenced in the orders table

ALTER TABLE Customers
    ADD ProductID;

ALTER TABLE Customers
    ADD FOREIGN KEY (ProductID) REFERENCES games(ID);

--------------------------------------------------------
-- ADDING DATA --
-- Games Table
INSERT INTO Games(ID, Title, R_Date, InStock)
    VALUES ('1001', 'Tetris Rave', '2002-06-10', '6'),
    ('1002', 'Ponk', '2020-07-01', '2'),
    ('1003', 'Catz', '2006-03-26', '13'),
    ('1004', 'Pie Fight', '1998-08-19', '4'),
    ('1005', 'Chicken Run', '2010-11-21', '10');

-- Customers Table
INSERT INTO Customers (ID, Name, Email, Phone)
    VALUES ('0001', 'Harry Phelps', 'tonaper467@nmaller.com', '0717351987323'),
    ('0002', 'Jim Carrey', 'JC1314@gmail.com', '07198381239817485'),
    ('0003', 'Ellie Sun', 'sunnyside@yahoo.com', '071983321391874'),
    ('0004', 'Nico Allan', 'Allan-N@outlook.com', '073651892194321'),
    ('0005', 'Chip Dale', 'chippy@gmail.com', '071543e182731642');

-- Orders Table
INSERT INTO Orders (ID, OrderNumber, CustomerID, ProductID, OrderDate)
    VALUES ('01', '1', '0004', '1001','2022-05-23'),
    ('02', '2', '0002', '1003','2020-03-12'),
    ('03', '3', '0001', '1004','2023-02-13'),
    ('04', '4', '0003', '1002','2023-02-03'),
    ('05', '5', '0005', '1004','2020-12-03');