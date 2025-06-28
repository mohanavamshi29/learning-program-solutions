SELECT * FROM bankdb.transactions;

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(10),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

INSERT INTO Transactions VALUES (1, 1, NOW(), 200, 'Deposit');
INSERT INTO Transactions VALUES (2, 2, NOW(), 300, 'Withdrawal');
