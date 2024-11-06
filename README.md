# Library-management-system

This project implements a **Library Management System (LMS)** using SQL to manage various operations of a library.
The database stores and organizes key information about Books, Branches, Employees, Customers, and the status of Issued and Returned books.
The goal of this system is to automate and streamline the management of library resources, including tracking books, users, and transactions.

## Overview
The Library Management System (LMS) is designed to automate various tasks in a library such as:

**Tracking books**: Book availability, rental prices, categories, and status (issued or available).

**Employee management**: Employee details, positions, and salaries.

**Customer management**: Information about customers, including their registration date and books issued.

**Transaction management**: Track issued books, return dates, and overdue books.

The system uses six main tables:

**Branch**: Stores information about library branches.

**Employee**: Contains details about employees working in the library.

**Books**: Contains data on all available books.

**Customer**: Stores customer details.

**IssueStatus**: Tracks issued books and their respective customers.

**ReturnStatus**: Keeps track of returned books and their corresponding customers.


## Project Structure
This repository contains the following components:

**SQL Scripts:**

**create_tables.sql**: Script to create the necessary database and tables.

**queries.sql**: Contains SQL queries to retrieve required information based on project requirements.

**PPT of Screenshots**: Screenshots of query outputs for each requirement.

 **README.md**: Project documentation (this file).


## Tables and Their Attributes
The database contains six tables with the following attributes:

### Branch

**Branch_no**: Primary Key, unique identifier for each branch.

**Manager_Id**: The ID of the branch manager.

**Branch_addres**s: Address of the branch.

**Contact_no**: Contact number of the branch.


### Employee

**Emp_Id**: Primary Key, unique identifier for each employee.

**Emp_name**: Name of the employee.

**Position**: Job position of the employee (e.g., Manager, Librarian).

**Salary**: Monthly salary of the employee.

**Branch_no**: Foreign Key, references the Branch_no in the Branch table.

### Books

**ISBN**: Primary Key, unique identifier for each book.

**Book_title**: Title of the book.

**Category**: Category or genre of the book (e.g., Fiction, Non-fiction).

**Rental_Price**: Price for renting the book.

**Status**: Availability status of the book (yes for available, no for not available).

**Author**: Name of the book’s author.

**Publisher**: Name of the book’s publisher.


### Customer

**Customer_Id**: Primary Key, unique identifier for each customer.

**Customer_name**: Name of the customer.

**Customer_address**: Customer’s address.

**Reg_date**: Date the customer registered with the library.

### IssueStatus

**Issue_Id**: Primary Key, unique identifier for each book issued.

**Issued_cust**: Foreign Key, references Customer_Id in the Customer table.

**Issued_book_name**: The name of the book issued.

**Issue_date**: The date the book was issued.

**ISBN_book**: Foreign Key, references ISBN in the Books table.


### ReturnStatus

**Return_Id**: Primary Key, unique identifier for each book returned.

**Return_cust**: Foreign Key, references Customer_Id in the Customer table.

**Return_book_name**: The name of the book returned.

**Return_date**: The date the book was returned.

**ISBN_book**: Foreign Key, references ISBN in the Books table.



# SQL Queries
The following SQL queries have been implemented to fetch required information from the database:

1.Retrieve the book title, category, and rental price of all available books.

2.List the employee names and their respective salaries in descending order of salary.

3.Retrieve the book titles and the corresponding customers who have issued those books.

4.Display the total count of books in each category.

5.Retrieve the employee names and their positions for the employees whose salaries are above Rs. 50,000.

6.List the customer names who registered before 2022-01-01 and have not issued any books yet.

7.Display the branch numbers and the total count of employees in each branch.

8.Display the names of customers who have issued books in the month of June 2023.

9.Retrieve book_title from the Books table containing the word "history".

10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.

11.Retrieve the names of employees who manage branches and their respective branch addresses.

12.Display the names of customers who have issued books with a rental price higher than Rs. 25.



