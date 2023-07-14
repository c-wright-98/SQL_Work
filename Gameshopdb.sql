CREATE DATABASE gameshopDB;

USE gameshopDB;

CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    Email VARCHAR(200),
    Phone INT);

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

ALTER TABLE Customers
    ADD ProductID;

ALTER TABLE Customers
    ADD FOREIGN KEY (ProductID) REFERENCES games(ID);