CREATE TABLE EMPLOYEE (
    Emp_no NUMBER,
    E_name VARCHAR(255),
    E_address VARCHAR(255),
    E_ph_no VARCHAR(15),
    Dept_no NUMBER,
    Dept_name VARCHAR(50),
    Job_id VARCHAR(10),
    Salary DECIMAL(10, 2)
);

INSERT INTO EMPLOYEE (Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name, Job_id, Salary)
VALUES
  (1, 'John Doe', '123 Main St', '555-1234', 101, 'HR', 'HR1', 50000),
  (2, 'Jane Smith', '456 Oak St', '555-5678', 102, 'IT', 'IT1', 60000),
  (3, 'Bob Johnson', '789 Pine St', '555-9876', 103, 'Finance', 'F1', 70000),
  (4, 'Alice Brown', '101 Maple St', '555-4321', 104, 'Marketing', 'M1', 55000),
  (5, 'Charlie Wilson', '202 Elm St', '555-8765', 105, 'Sales', 'S1', 65000);

a: Add a new column HIREDATE to the EMPLOYEE table

ALTER TABLE EMPLOYEE
ADD HIREDATE DATE;

b: Change the datatype of JOB_ID from char to varchar2

ALTER TABLE EMPLOYEE
MODIFY JOB_ID VARCHAR2(10);

c: Change the name of column/field Emp_no to E_no

ALTER TABLE EMPLOYEE
RENAME COLUMN Emp_no TO E_no;

d: Modify the column width of the job field of emp table

ALTER TABLE EMPLOYEE
MODIFY JOB_ID VARCHAR2(20);