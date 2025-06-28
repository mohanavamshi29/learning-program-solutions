SELECT 
  CONCAT('Reminder: Dear ', c.Name, 
         ', your loan (Loan ID: ', l.LoanID, 
         ') is due on ', DATE_FORMAT(l.EndDate, '%d-%b-%Y')) AS ReminderMessage
FROM Loans l
JOIN Customers c ON l.CustomerID = c.CustomerID
WHERE l.EndDate BETWEEN CURDATE() AND CURDATE() + INTERVAL 30 DAY;
