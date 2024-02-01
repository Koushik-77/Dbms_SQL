Create the EMPLOYEE table
CREATE TABLE EMPLOYEE (
    Emp_no INT PRIMARY KEY,
    E_name VARCHAR(255),
    E_address VARCHAR(255),
    E_ph_no VARCHAR(15),
    Dept_no INT,
    Dept_name VARCHAR(50),
    Job_id VARCHAR(10),
    Salary DECIMAL(10, 2)
);

a: Insert at least 5 rows into the EMPLOYEE table
INSERT INTO EMPLOYEE (Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name, Job_id, Salary)
VALUES
  (1, 'John Doe', '123 Main St', '555-1234', 101, 'HR', 'HR1', 50000),
  (2, 'Jane Smith', '456 Oak St', '555-5678', 102, 'IT', 'IT1', 60000),
  (3, 'Bob Johnson', '789 Pine St', '555-9876', 103, 'Finance', 'F1', 70000),
  (4, 'Alice Brown', '101 Maple St', '555-4321', 104, 'Marketing', 'M1', 55000),
  (5, 'Charlie Wilson', '202 Elm St', '555-8765', 105, 'Sales', 'S1', 65000);

b: Display all information from the EMPLOYEE table

SELECT * FROM EMPLOYEE;

c: Update the city of Emp_no-12 to Nagpur

UPDATE EMPLOYEE
SET E_address = 'Nagpur'
WHERE Emp_no = 12;
