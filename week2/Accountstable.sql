SELECT * FROM bankdb.accounts;
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    LastModified DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Accounts VALUES (1, 1, 'Savings', 1000, NOW());
INSERT INTO Accounts VALUES (2, 2, 'Checking', 1500, NOW());
