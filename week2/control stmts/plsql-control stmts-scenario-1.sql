UPDATE Loans
JOIN Customers ON Loans.CustomerID = Customers.CustomerID
SET Loans.InterestRate = Loans.InterestRate - 1
WHERE TIMESTAMPDIFF(YEAR, Customers.DOB, CURDATE()) > 60;

select * from loans;