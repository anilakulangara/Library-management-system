CREATE DATABASE LIBRARY;
USE LIBRARY;

-- 1. Branch Table
CREATE TABLE BRANCH (
    Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(255),
    Contact_no VARCHAR(15)
);

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES
(1, 1, '123 Main Street, suwon, 12345', '555-1234'),
(2, 2, '456 Oak Street, busan, 67890', '555-5678'),
(3, 3, '789 Pine Street, nami, 11223', '555-9876'),
(4, 4, '101 Maple Avenue, whitefield,33445', '555-2468'),
(5, 5, '202 Birla Road, Springdale,99887', '555-1357'),
(6, 6, '303 Ceil road, Greenfield,22334', '555-4680'),
(7, 7, '404 Redwood Street, Parkview,44556', '555-7890'),
(8, 8, '505 Elia Street, Hilltop,66778', '555-3456'),
(9, 9, '606 Will garden, Lakeside,88990', '555-6789'),
(10, 10, '707 Ash Street, Riverside,11234', '555-4321');

-- 2.Employee table
CREATE TABLE EMPLOYEE (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(20),
    Position VARCHAR(20),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES
(1, 'Anila aswin', 'Manager', 75000.00, 1),
(2, 'Anusree rajessh', 'Sales Associate', 45000.00, 2),
(3, 'Aswin kumar', 'Accountant', 55000.00, 3),
(4, 'rajeesh babu', 'HR Specialist', 60000.00, 4),
(5, 'Ivanshika das', 'IT Support', 50000.00, 5),
(6, 'Rahul raj', 'Marketing Lead', 65000.00, 6),
(7, 'reyansh rahul', 'Customer Service', 42000.00, 7),
(8, 'Helen sophia', 'Operations Manager', 70000.00, 8),
(9, 'Elia Martin', 'Sales Associate', 47000.00, 9),
(10, 'Jenna Davis', 'Branch Assistant', 38000.00, 10),
(11, 'Jenna Davis', 'Sales Associate', 47000.00, 10),
(12, 'Jenna Davis', 'Operations Manager', 68000.00, 10),
(13, 'Jenna Davis', 'Customer Service', 41000.00, 10),
(14, 'Jenna Davis', 'Accountant', 56000.00, 10),
(15, 'Jenna Davis', 'IT Support', 49000.00, 10),
(16, 'Jenna Davis', 'HR Associate', 40000.00, 10);

-- 3. Books Table
CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Book_title VARCHAR(255),
    Category VARCHAR(100),
    Rental_Price DECIMAL(10, 2),
    Status ENUM('yes', 'no'),
    Author VARCHAR(100),
    Publisher VARCHAR(100)
);

INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES
('978-1-4028-9462-6', 'The Great Gatsby', 'Fiction', 5.99, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-06-112008-4', 'To Kill a Mockingbird', 'Fiction', 4.99, 'no', 'Harper Lee', 'HarperCollins'),
('978-0-452-28423-4', '1984', 'Dystopian', 6.99, 'yes', 'George Orwell', 'Secker & Warburg'),
('978-0-7432-7356-5', 'The Da Vinci Code', 'Thriller', 25.99, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-14-028333-4', 'Pride and Prejudice', 'Classic', 3.99, 'yes', 'Jane Austen', 'Penguin Classics'),
('978-1-59448-671-6', 'Sapiens: A Brief History of Humankind', 'Non-fiction', 8.99, 'no', 'Yuval Noah Harari', 'Harvill Secker'),
('978-0-451-52843-3', 'Fahrenheit 451', 'Dystopian', 33.49, 'yes', 'Ray Bradbury', 'Ballantine Books'),
('978-0-399-15961-0', 'Educated', 'Memoir', 43.99, 'yes', 'Tara Westover', 'Random House'),
('978-1-9848-2680-9', 'Becoming', 'Biography', 11.99, 'no', 'Michelle Obama', 'Crown Publishing'),
('978-0-316-75943-1', 'The Catcher in the Rye', 'Fiction', 6.49, 'yes', 'J.D. Salinger', 'Little, Brown and Company');

-- 4. Customer Table
CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Customer_address VARCHAR(255),
    Reg_date DATE
);

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
(1, 'John David', '789 Pine St, Villagetown', '2023-01-15'),
(2, 'rahul Smith', '101 Maple Ave, Suburbia', '2022-11-22'),
(3, 'Sania Brown', '456 Oak Rd, Townsville', '2021-08-10'),
(4, 'Emily Davis', '234 Birch Blvd, Cityville', '2020-04-03'),
(5, 'Michael daniel', '678 Cedar Ln, Uptown', '2023-03-19'),
(6, 'Sophia Martin', '1010 Elm St, Midtown', '2022-07-25'),
(7, 'David John', '500 Pineapple Ave, Greenfield', '2021-12-01'),
(8, 'Olivia raj', '123 Maple Ave, Lakeside', '2020-09-15'),
(9, 'James Raj', '789 Oak St, Suburbia', '2022-06-30'),
(10, 'Lucas john', '456 River Rd, Riverside', '2023-02-11'),
(11, 'Harris James', '234 Birch Blvd, Cityville', '2020-06-03');


-- 5. IssueStatus Table
CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(255),
    Issue_date DATE,
    Isbn_book VARCHAR(20),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES
(1, 1, 'The Great Gatsby', '2024-10-01', '978-1-4028-9462-6'),
(2, 2, 'To Kill a Mockingbird', '2024-10-03', '978-0-06-112008-4'),
(3, 3, '1984', '2024-10-05', '978-0-452-28423-4'),
(4, 4, 'The Da Vinci Code', '2024-10-07', '978-0-7432-7356-5'),
(5, 5, 'Pride and Prejudice', '2023-06-10', '978-0-14-028333-4'),
(6, 6, 'Sapiens: A Brief History of Humankind', '2024-10-12', '978-1-59448-671-6'),
(7, 7, 'Fahrenheit 451', '2024-10-15', '978-0-451-52843-3'),
(8, 8, 'Educated', '2024-10-17', '978-0-399-15961-0'),
(9, 9, 'Becoming', '2024-10-20', '978-1-9848-2680-9'),
(10, 10, 'The Catcher in the Rye', '2024-10-22', '978-0-316-75943-1');



-- 6. ReturnStatus Table
CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(255),
    Return_date DATE,
    Isbn_book2 VARCHAR(20),
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
(1, 1, 'The Great Gatsby', '2024-10-15', '978-1-4028-9462-6'),
(2, 2, 'To Kill a Mockingbird', '2024-10-17', '978-0-06-112008-4'),
(3, 3, '1984', '2024-10-18', '978-0-452-28423-4'),
(4, 4, 'The Da Vinci Code', '2024-10-20', '978-0-7432-7356-5'),
(5, 5, 'Pride and Prejudice', '2024-10-22', '978-0-14-028333-4'),
(6, 6, 'Sapiens: A Brief History of Humankind', '2024-10-24', '978-1-59448-671-6'),
(7, 7, 'Fahrenheit 451', '2024-10-25', '978-0-451-52843-3'),
(8, 8, 'Educated', '2024-10-27', '978-0-399-15961-0'),
(9, 9, 'Becoming', '2024-10-29', '978-1-9848-2680-9'),
(10, 10, 'The Catcher in the Rye', '2024-10-30', '978-0-316-75943-1');


#1. Retrieve the book title, category, and rental price of all available books. 
  SELECT Book_title, Category, Rental_Price 
  FROM Books 
  WHERE Status = 'yes';
  
  #2. List the employee names and their respective salaries in descending order of salary. 
  SELECT Emp_name,salary FROM Employee
  ORDER BY Salary DESC;
  
  # 3. Retrieve the book titles and the corresponding customers who have issued those books. 
SELECT b.Book_title, c.Customer_name
FROM IssueStatus i
JOIN Books b ON b.ISBN = i.Isbn_book
JOIN Customer c ON i.Issued_cust = c.Customer_Id;
 
 #4. Display the total count of books in each category. 
 SELECT Category, COUNT(*) 
 AS Total_Books 
 FROM Books
 GROUP BY Category;


 #5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT emp_name,position 
FROM employee
WHERE Salary >'50000';

 #6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
SELECT c.Customer_name
FROM Customer c
LEFT JOIN IssueStatus i 
ON c.Customer_Id = i.Issued_cust
WHERE c.Reg_date < '2022-01-01' AND i.Issued_cust IS NULL;
 
 
 
# 7. Display the branch numbers and the total count of employees in each branch. 
SELECT e.Branch_no, COUNT(*) AS Total_Employees
FROM Employee e
GROUP BY e.Branch_no;


#8. Display the names of customers who have issued books in the month of June 2023.
SELECT c.Customer_name
FROM Customer c
JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
WHERE i.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';
 
 
 #9. Retrieve book_title from book table containing history.
SELECT Book_title
FROM Books
WHERE Book_title LIKE '%history%';
 
 
 #10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
 SELECT e.Branch_no, COUNT(*) AS Total_Employees
FROM Employee e
GROUP BY e.Branch_no
HAVING COUNT(*) > 5;



#11. Retrieve the names of employees who manage branches and their respective branch addresses. 
SELECT e.Emp_name, b.Branch_address
FROM Employee e
JOIN Branch b ON e.Branch_no = b.Branch_no
WHERE e.Position = 'Manager';

#12. Display the names of customers who have issued books with a rental price higher than Rs. 25.  
SELECT c.Customer_name
FROM Customer c
JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
JOIN Books b ON i.Isbn_book = b.ISBN
WHERE b.Rental_Price > 25;