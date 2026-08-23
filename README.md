# SQL--DDL-Commands-and-Constraints-Exploration

📌 Project Overview

This project demonstrates fundamental SQL concepts related to Database Definition Language (DDL) and SQL Constraints using an Employee database.

The project creates and manages three related tables:

Departments
Location
Employees

It also demonstrates how to modify database structures using DDL commands and apply constraints to maintain data integrity.

🛠️ Technologies Used

MySQL
SQL

🗂️ Database Structure

1. Departments Table

Stores information about company departments.

Column	Description
Department_id	Unique ID for each department
Department_name	Name of the department

2. Location Table

Stores information about company locations.

Column	Description
Location_id	Unique ID for each location
Location_name	Name of the location

3. Employees Table

Stores employee information such as name, gender, age, hire date, designation, salary, department, and location.

Column	Description
Employee_id	Unique ID for each employee
Employee_Name	Name of the employee
Gender	Employee gender
Age	Employee age
Hire_date	Employee joining date
Designation	Employee job designation
Salary	Employee salary
Department_id	Reference to the Departments table
Location_id	Reference to the Location table

🏗️ DDL Commands Used

This project demonstrates the following DDL commands:


## CREATE--Used to create:

Database

Tables

## ALTER-- Used to modify the Employees table by:

Adding a new Email column

Modifying the Designation column

Dropping the Age column

Renaming Hire_date to Date_of_joining

## TRUNCATE-- Used to remove all records from the Employees table while keeping the table structure.

## DROP-- Used to remove:

Tables

Database

🔐 SQL Constraints Used

The project demonstrates the following constraints:

PRIMARY KEY – Ensures each record has a unique identifier.
FOREIGN KEY – Creates relationships between tables.
UNIQUE – Prevents duplicate values.
NOT NULL – Prevents empty values.
CHECK – Ensures that employee age is at least 18.
DEFAULT – Automatically assigns the current date to the hire date.
AUTO_INCREMENT – Automatically generates unique IDs.
ENUM – Restricts gender values to M or F.
🔗 Table Relationships

The Employees table is connected to the other tables using foreign keys:

Department_id references Departments(Department_id)
Location_id references Location(Location_id)

This establishes relationships between employees, their departments, and their locations.

📂 Project Structure
SQL-DDL-Commands-and-Constraints/
│
├── ddl_commands.sql
├── constraints.sql
└── README.md

🚀 How to Run the Project
Open MySQL Workbench or another MySQL-compatible SQL environment.
Download or clone this repository.
Open the SQL file.
Execute the SQL queries.
The database and related tables will be created.

🎯 Key Learning Outcomes

Through this project, I learned how to:

Create databases and tables
Insert records into tables
Modify table structures using ALTER
Add, modify, drop, and rename columns
Remove table data using TRUNCATE
Delete tables and databases using DROP
Apply SQL constraints
Create relationships using foreign keys
Use AUTO_INCREMENT for automatic ID generation
Maintain data integrity in a relational database
