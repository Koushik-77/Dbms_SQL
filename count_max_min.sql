CREATE TABLE EMPLOYEE (
    E_id INT PRIMARY KEY,
    E_name VARCHAR(255),
    Age INT,
    Salary DECIMAL(10, 2)
);

Insert the data from the question broo

a. Count the number of employee names from the EMPLOYEE table:

SELECT COUNT(E_name) AS TotalEmployees
FROM EMPLOYEE;

b. Find the Maximum age from the EMPLOYEE table:

SELECT MAX(Age) AS MaxAge
FROM EMPLOYEE;

c. Find the Minimum age from the EMPLOYEE table:

SELECT MIN(Age) AS MinAge
FROM EMPLOYEE;
