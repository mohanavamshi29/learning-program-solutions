use Cognizant;
CREATE TABLE SavingsAccounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    Balance DECIMAL(10,2)
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10,2)
);
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    Balance DECIMAL(10,2)
);

DELIMITER $$
CREATE PROCEDURE ProcessMonthlyInterest()
BEGIN
    UPDATE SavingsAccounts
    SET Balance = Balance * 1.01;
END$$
DELIMITER ;
CALL ProcessMonthlyInterest();

DELIMITER $$
CREATE PROCEDURE UpdateEmployeeBonus(
    IN deptName VARCHAR(100),
    IN bonusPercent DECIMAL(5,2) -- example: 5.5 for 5.5%
)
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * bonusPercent / 100)
    WHERE Department = deptName;
END$$
DELIMITER ;
CALL UpdateEmployeeBonus('Sales', 7.5);

DELIMITER $$
CREATE PROCEDURE TransferFunds(
    IN fromAccount INT,
    IN toAccount INT,
    IN amount DECIMAL(10,2)
)
BEGIN
    DECLARE fromBalance DECIMAL(10,2);
    SELECT Balance INTO fromBalance
    FROM Accounts
    WHERE AccountID = fromAccount;
    IF fromBalance >= amount THEN
        UPDATE Accounts
        SET Balance = Balance - amount
        WHERE AccountID = fromAccount;
        UPDATE Accounts
        SET Balance = Balance + amount
        WHERE AccountID = toAccount;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient balance for transfer';
    END IF;
END$$
DELIMITER ;
CALL TransferFunds(1001, 1002, 500.00);
