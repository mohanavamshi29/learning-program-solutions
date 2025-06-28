SELECT * FROM bankdb.customers;

CREATE TABLE Customers (
Customer1D INT PRIMARY KEY,
Name VARCHAR(100),
DOB DATE,
Balance DECIMAL,
LastModified DATE,
IsVIP CHAR(1) DEFAULT 'N'
);

INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified)
VALUES (1, 'John Doe', TO_DATE('1955-05-15', 'YYYY-MM-DD'), 12000, SYSDATE);

INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified)
VALUES (2, 'Jane Smith', TO_DATE('1990-07-20', 'YYYY-MM-DD'), 1500, SYSDATE);
