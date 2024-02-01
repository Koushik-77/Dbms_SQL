Create a table EMPLOYEE with following schema:

CREATE TABLE EMPLOYEE (
    E_id INT PRIMARY KEY,
    E_name VARCHAR(255),
    Age INT,
    Salary DECIMAL(10, 2)
);

Insert the data from the question broo

a. Find grouped salaries of employees using the GROUP BY clause:

SELECT Salary, COUNT(*) AS EmployeeCount
FROM EMPLOYEE
GROUP BY Salary;

b. Find salaries of employees in Ascending Order using the ORDER BY clause:

SELECT E_name, Salary
FROM EMPLOYEE
ORDER BY Salary ASC;

c. Find salaries of employees in Descending Order:

SELECT E_name, Salary
FROM EMPLOYEE
ORDER BY Salary DESC;
