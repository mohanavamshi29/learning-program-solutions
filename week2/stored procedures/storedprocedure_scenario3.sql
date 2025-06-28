DELIMITER //

CREATE PROCEDURE TransferFunds(
    IN source_id INT,
    IN dest_id INT,
    IN transfer_amount DECIMAL(10,2)
)
BEGIN
    DECLARE source_balance DECIMAL(10,2);
    SELECT Balance INTO source_balance
    FROM Accounts
    WHERE AccountID = source_id;
    IF source_balance >= transfer_amount THEN
        UPDATE Accounts
        SET Balance = Balance - transfer_amount
        WHERE AccountID = source_id;
        UPDATE Accounts
        SET Balance = Balance + transfer_amount
        WHERE AccountID = dest_id;

    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient balance in source account';
    END IF;
END;
//

DELIMITER ;

CALL TransferFunds(1, 2, 500.00);
select * from accounts;
