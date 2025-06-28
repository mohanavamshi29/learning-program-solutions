SELECT * FROM bankdb.employees;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Position VARCHAR(50),
    Salary DECIMAL(10,2),
    Department VARCHAR(50),
    HireDate DATE
);

INSERT INTO Employees VALUES (1, 'Alice Johnson', 'Manager', 70000, 'HR', '2015-06-15');
INSERT INTO Employees VALUES (2, 'Bob Brown', 'Developer', 60000, 'IT', '2017-03-20');