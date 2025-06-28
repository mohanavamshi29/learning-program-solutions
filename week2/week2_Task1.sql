use Cognizant;
CREATE TABLE CUSTOMERS (
    CustomerID INT PRIMARY KEY,
    Age INT,
    Balance DECIMAL(10,2),
    IsVIP BOOLEAN DEFAULT FALSE
);
CREATE TABLE LOANS (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    InterestRate DECIMAL(5,2),
    DueDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMERS(CustomerID)
);
DELIMITER $$
CREATE PROCEDURE ApplyInterestDiscountForSeniors()
BEGIN
    UPDATE LOANS
    JOIN CUSTOMERS ON LOANS.CustomerID = CUSTOMERS.CustomerID
    SET LOANS.InterestRate = LOANS.InterestRate - 1
    WHERE CUSTOMERS.Age > 60;
END$$
DELIMITER ;
CALL ApplyInterestDiscountForSeniors();
DELIMITER $$
CREATE PROCEDURE PromoteToVIP()
BEGIN
    UPDATE CUSTOMERS
    SET IsVIP = TRUE
    WHERE Balance > 10000;
END$$
DELIMITER ;
CALL PromoteToVIP();
DELIMITER $$
CREATE PROCEDURE ShowDueLoanReminders()
BEGIN
    SELECT 
        CONCAT('Reminder: Loan ', l.LoanID, 
               ' for Customer ', c.CustomerID, 
               ' is due on ', DATE_FORMAT(l.DueDate, '%d-%b-%Y')) AS Reminder_Message
    FROM LOANS l
    JOIN CUSTOMERS c ON l.CustomerID = c.CustomerID
    WHERE l.DueDate BETWEEN CURDATE() AND CURDATE() + INTERVAL 30 DAY;
END$$
DELIMITER ;
CALL ShowDueLoanReminders();
