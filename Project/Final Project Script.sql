USE faye;
# Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    DateOfEnrollment DATETIME,
    DateOfBirth DATETIME,
    Phone VARCHAR(20),   
    Email VARCHAR(255),  
    Address TEXT,        
    SSN TEXT,
    loyal_customer_id INT,
    FOREIGN KEY (loyal_customer_id) REFERENCES Customers(CustomerID)
);

#Insert 10 records into the Customers table
INSERT INTO Customers (CustomerID, Name, DateOfEnrollment, DateOfBirth, Phone, Email, Address, SSN, loyal_customer_id)
VALUES
    (1, 'John Doe', '2022-01-01', '1980-05-15', '123-456-7890', 'john@example.com', '123 Main St', '123-45-6789', NULL),
    (2, 'Jane Smith', '2022-01-02', '1985-03-20', '987-654-3210', 'jane@example.com', '456 Elm St', '987-65-4321', NULL),
    (3, 'David Johnson', '2022-03-15', '1990-08-10', '555-555-5555', 'david@example.com', '789 Oak St', '555-55-5555', NULL),
    (4, 'Sarah Wilson', '2022-03-20', '1987-12-05', '111-222-3333', 'sarah@example.com', '456 Pine St', '111-22-3333', NULL),
    (5, 'Michael Brown', '2022-04-10', '1982-04-18', '999-888-7777', 'michael@example.com', '789 Maple St', '999-88-7777', NULL),
    (6, 'Emily Davis', '2022-04-20', '1995-01-22', '444-666-8888', 'emily@example.com', '123 Elm St', '444-66-8888', NULL),
    (7, 'Daniel Lee', '2022-05-05', '1989-11-03', '777-999-4444', 'daniel@example.com', '456 Oak St', '777-99-4444', NULL),
    (8, 'Olivia White', '2022-05-10', '1984-07-15', '333-222-1111', 'olivia@example.com', '789 Cedar St', '333-22-1111', NULL),
    (9, 'William Johnson', '2022-06-01', '1981-03-30', '222-333-4444', 'william@example.com', '123 Cedar St', '222-33-4444', NULL),
    (10, 'Sophia Martin', '2022-06-10', '1993-09-25', '666-333-1111', 'sophia@example.com', '456 Pine St', '666-33-1111', NULL);


#Create Accounts table
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountType VARCHAR(50),
    Balance NUMERIC(12, 2),
    OpeningDate DATETIME,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
 
#Insert 10 records into the Accounts table
INSERT INTO Accounts (AccountID, AccountType, Balance, OpeningDate, CustomerID)
VALUES
    (1, 'Savings', 5000.00, '2022-01-01', 1),
    (2, 'Checking', 2500.00, '2022-01-01', 2),
    (3, 'Savings', 8000.00, '2022-02-15', 3),
    (4, 'Checking', 3500.00, '2022-02-15', 4),
    (5, 'Savings', 12000.00, '2022-03-20', 5),
    (6, 'Checking', 6000.00, '2022-03-20', 6),
    (7, 'Savings', 7000.00, '2022-04-10', 7),
    (8, 'Checking', 4000.00, '2022-04-10', 8),
    (9, 'Savings', 9500.00, '2022-05-01', 9),
    (10, 'Checking', 5500.00, '2022-05-01', 10);

#Create Transactions table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    TransactionType VARCHAR(50),
    Amount NUMERIC(12, 2),
    TransactionDateTime DATETIME,
    AccountID INT,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

#Insert 10 records into the Transactions table
INSERT INTO Transactions (TransactionID, TransactionType, Amount, TransactionDateTime, AccountID)
VALUES
    (1, 'Deposit', 1000.00, '2022-01-03 09:00:00', 1),
    (2, 'Withdrawal', 500.00, '2022-01-04 15:30:00', 2),
    (3, 'Deposit', 1500.00, '2022-02-16 14:15:00', 3),
    (4, 'Withdrawal', 750.00, '2022-02-17 10:45:00', 4),
    (5, 'Deposit', 2000.00, '2022-03-21 12:00:00', 5),
    (6, 'Withdrawal', 1000.00, '2022-03-21 16:30:00', 6),
    (7, 'Deposit', 2500.00, '2022-04-11 08:30:00', 7),
    (8, 'Withdrawal', 1200.00, '2022-04-12 17:15:00', 8),
    (9, 'Deposit', 3000.00, '2022-05-02 11:00:00', 9),
    (10, 'Withdrawal', 1500.00, '2022-05-03 15:45:00', 10);

#Create FinancialProducts table
CREATE TABLE FinancialProducts (
    ProductID INT PRIMARY KEY,
    ProductType VARCHAR(50),
    ProductName VARCHAR(255),
    Price NUMERIC(12, 2)
);

#Insert 10 records into the FinancialProducts table 
INSERT INTO FinancialProducts (ProductID, ProductType, ProductName, Price)
VALUES
    (1, 'Stock', 'TechStock', 100.00),
    (2, 'Bond', 'GovernmentBond', 1000.00),
    (3, 'Stock', 'PharmaStock', 80.00),
    (4, 'Stock', 'AutoStock', 120.00),
    (5, 'Bond', 'CorporateBond', 800.00),
    (6, 'Stock', 'EnergyStock', 110.00),
    (7, 'Stock', 'RetailStock', 90.00),
    (8, 'Bond', 'MunicipalBond', 950.00),
    (9, 'Stock', 'FinanceStock', 105.00),
    (10, 'Stock', 'TelecomStock', 70.00);

# Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    DateOfBirth DATETIME,
    Phone VARCHAR(20),   
    Email VARCHAR(255),  
    Address TEXT,        
    Position VARCHAR(50),
    Salary NUMERIC(12, 2),
    HireDate DATETIME
);

#Insert 10 records into the Employees table 
INSERT INTO Employees (EmployeeID, Name, DateOfBirth, Phone, Email, Address, Position, Salary, HireDate)
VALUES
    (1, 'Alice Johnson', '1988-06-10', '555-555-5555', 'alice@example.com', '789 Oak St', 'Customer Service', 60000.00, '2021-03-15'),
    (2, 'Bob Smith', '1990-09-25', '666-666-6666', 'bob@example.com', '456 Pine St', 'Financial Advisor', 75000.00, '2021-04-01'),
    (3, 'Eva Brown', '1985-03-20', '777-777-7777', 'eva@example.com', '123 Main St', 'Loan Officer', 70000.00, '2021-04-15'),
    (4, 'Max Davis', '1980-05-15', '888-888-8888', 'max@example.com', '456 Elm St', 'Investment Analyst', 85000.00, '2021-05-01'),
    (5, 'Grace Wilson', '1989-11-03', '999-999-9999', 'grace@example.com', '789 Maple St', 'Branch Manager', 90000.00, '2021-05-15'),
    (6, 'Oliver Lee', '1981-03-30', '111-111-1111', 'oliver@example.com', '123 Cedar St', 'Customer Service', 60000.00, '2021-06-01'),
    (7, 'Mia Martin', '1984-07-15', '222-222-2222', 'mia@example.com', '456 Oak St', 'Financial Advisor', 75000.00, '2021-06-15'),
    (8, 'Noah White', '1993-09-25', '333-333-3333', 'noah@example.com', '789 Cedar St', 'Loan Officer', 70000.00, '2021-07-01'),
    (9, 'Sophia Johnson', '1995-01-22', '444-444-4444', 'sophia@example.com', '123 Elm St', 'Investment Analyst', 85000.00, '2021-07-15'),
    (10, 'Liam Smith', '1982-04-18', '123-123-1234', 'liam@example.com', '456 Pine St', 'Branch Manager', 90000.00, '2021-08-01');

#Create EmployeesCustomers table (to represent the many-to-many relationship)
CREATE TABLE EmployeesCustomers (
    EmployeeID INT,
    CustomerID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

#Insert 10 records into the EmployeesCustomers table (sample data)
INSERT INTO EmployeesCustomers (EmployeeID, CustomerID)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (3, 6),
    (4, 7),
    (4, 8),
    (5, 9),
    (5, 10);

#Create Loans table
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    LoanType VARCHAR(50),
    LoanAmount NUMERIC(12, 2),
    InterestRate NUMERIC(5, 2),
    LoanTerm INT,
    ApprovalDate DATETIME,
    CustomerID INT,
    AccountID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);


#Insert 10 records into the Loans table (sample data)
INSERT INTO Loans (LoanID, LoanType, LoanAmount, InterestRate, LoanTerm, ApprovalDate, CustomerID, AccountID)
VALUES
    (1, 'Mortgage', 250000.00, 3.5, 30, '2022-01-15', 1, 1),
    (2, 'Personal', 10000.00, 7.5, 5, '2022-02-01', 2, 2),
    (3, 'Auto', 15000.00, 4.0, 4, '2022-03-15', 3, 3),
    (4, 'Mortgage', 300000.00, 3.25, 30, '2022-04-01', 4, 4),
    (5, 'Personal', 12000.00, 8.0, 6, '2022-05-15', 5, 5),
    (6, 'Auto', 18000.00, 4.25, 4, '2022-06-01', 6, 6),
    (7, 'Mortgage', 200000.00, 3.75, 30, '2022-07-15', 7, 7),
    (8, 'Personal', 9000.00, 7.0, 5, '2022-08-01', 8, 8),
    (9, 'Auto', 16000.00, 4.5, 4, '2022-09-15', 9, 9),
    (10, 'Mortgage', 280000.00, 3.6, 30, '2022-10-01', 10, 10);

#Create CreditScores table
CREATE TABLE CreditScores (
    CreditScoreID INT PRIMARY KEY,
    CustomerID INT,
    Score NUMERIC(5, 2),
    ScoreDate DATETIME,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

#Insert 10 records into the CreditScores table (sample data)
INSERT INTO CreditScores (CreditScoreID, CustomerID, Score, ScoreDate)
VALUES
    (1, 1, 750.0, '2022-01-05'),
    (2, 2, 720.0, '2022-02-01'),
    (3, 3, 680.0, '2022-03-15'),
    (4, 4, 760.0, '2022-04-01'),
    (5, 5, 730.0, '2022-05-15'),
    (6, 6, 710.0, '2022-06-01'),
    (7, 7, 780.0, '2022-07-15'),
    (8, 8, 740.0, '2022-08-01'),
    (9, 9, 790.0, '2022-09-15'),
    (10, 10, 770.0, '2022-10-01');

#Create the Record table (to represent the ternary relationship)
CREATE TABLE Record (
    ProductID INT,
    AccountID INT,
    CustomerID INT,
    FOREIGN KEY (ProductID) REFERENCES FinancialProducts(ProductID),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

#Insert 10 records into the Record table
INSERT INTO Record (ProductID, AccountID, CustomerID)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5),
    (6, 6, 6),
    (7, 7, 7),
    (8, 8, 8),
    (9, 9, 9),
    (10, 10, 10);

#Customers Table:
-- Show table structure
DESC Customers;

#Show table records
SELECT * FROM Customers;

#Accounts Table:
-- Show table structure
DESC Accounts;

-- Show table records
SELECT * FROM Accounts;

#Transactions Table:
-- Show table structure
DESC Transactions;

-- Show table records
SELECT * FROM Transactions;

#FinancialProducts Table:
-- Show table structure
DESC FinancialProducts;

-- Show table records
SELECT * FROM FinancialProducts;

#Employees Table:
-- Show table structure
DESC Employees;

-- Show table records
SELECT * FROM Employees;

#EmployeesCustomers Table:
-- Show table structure
DESC EmployeesCustomers;

-- Show table records
SELECT * FROM EmployeesCustomers;

#Loans Table:
-- Show table structure
DESC Loans;

-- Show table records
SELECT * FROM Loans;

#CreditScores Table:
-- Show table structure
DESC CreditScores;

-- Show table records
SELECT * FROM CreditScores;

#Record Table:
-- Show table structure
DESC Record;

-- Show table records
SELECT * FROM Record;

SELECT c.CustomerID, c.Name, c.DateOfEnrollment, a.AccountType, a.Balance
FROM Customers c
JOIN Accounts a ON c.CustomerID = a.CustomerID
WHERE a.AccountType = 'Savings';

SELECT c.CustomerID, c.Name, l.LoanType, l.LoanAmount, l.InterestRate
FROM Customers c
JOIN Loans l ON c.CustomerID = l.CustomerID;


SELECT e.EmployeeID, e.Name, e.Position, c.Name AS CustomerName
FROM Employees e
JOIN EmployeesCustomers ec ON e.EmployeeID = ec.EmployeeID
JOIN Customers c ON ec.CustomerID = c.CustomerID
WHERE e.Position = 'Financial Advisor';

SELECT e.EmployeeID, e.Name, e.Position, c.Name AS CustomerName
FROM Employees e
JOIN EmployeesCustomers ec ON e.EmployeeID = ec.EmployeeID
JOIN Customers c ON ec.CustomerID = c.CustomerID
WHERE e.Position = 'Financial Advisor';

SELECT p.ProductID, p.ProductType, p.ProductName
FROM FinancialProducts p
JOIN Record r ON p.ProductID = r.ProductID
JOIN Customers c ON r.CustomerID = c.CustomerID
JOIN CreditScores cs ON c.CustomerID = cs.CustomerID
WHERE cs.Score > 750;

SELECT C.CustomerID, C.Name, A.AccountType, A.Balance
FROM Customers C
INNER JOIN Accounts A ON C.CustomerID = A.CustomerID
WHERE A.AccountType IN ('Savings', 'Checking')
AND C.CustomerID IN (
    SELECT C.CustomerID
    FROM Customers C
    INNER JOIN Accounts A ON C.CustomerID = A.CustomerID
    WHERE A.AccountType = 'Savings'
    INTERSECT
    SELECT C.CustomerID
    FROM Customers C
    INNER JOIN Accounts A ON C.CustomerID = A.CustomerID
    WHERE A.AccountType = 'Checking'
);



SELECT FP.ProductName, FP.Price
FROM FinancialProducts FP
INNER JOIN Record R ON FP.ProductID = R.ProductID
INNER JOIN Customers C ON R.CustomerID = C.CustomerID
GROUP BY FP.ProductName, FP.Price
ORDER BY FP.Price DESC
LIMIT 3;