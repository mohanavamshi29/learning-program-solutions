SELECT * FROM bankdb.loans;

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Loans VALUES (1, 1, 5000, 5.00, NOW(), DATE_ADD(NOW(), INTERVAL 20 DAY));
INSERT INTO Loans VALUES (2, 2, 7000, 7.00, NOW(), DATE_ADD(NOW(), INTERVAL 365 DAY));	