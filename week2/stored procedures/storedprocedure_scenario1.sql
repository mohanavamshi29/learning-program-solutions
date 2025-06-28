DELIMITER //

CREATE PROCEDURE ProcessMonthlyInterest()
BEGIN
    UPDATE Accounts
    SET Balance = Balance * 1.01
    WHERE AccountType = 'Savings' AND AccountID IS NOT NULL;
END;
//

DELIMITER ;


CALL ProcessMonthlyInterest();

SELECT * FROM Accounts ;
