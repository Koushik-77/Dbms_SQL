Create a table EMPLOYEE with following schema:

CREATE TABLE EMPLOYEE (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(255),
    JOB VARCHAR(50),
    MANAGER_NO INT,
    SAL DECIMAL(10, 2),
    COMMISSION DECIMAL(10, 2)
);

a. Insert three records in the employee table and use rollback:

Insert three records: 

INSERT INTO EMPLOYEE (EMPNO, ENAME, JOB, MANAGER_NO, SAL, COMMISSION)
VALUES
  (1, 'John Doe', 'Manager', 101, 50000, 2000),
  (2, 'Jane Smith', 'Developer', 102, 60000, 2500),
  (3, 'Bob Johnson', 'Analyst', 101, 55000, 1500);

Rollback :
ROLLBACK;

b. Add primary key constraint and not null constraint to the employee table:

Add primary key constraint:

ALTER TABLE EMPLOYEE
ADD CONSTRAINT PK_EMPLOYEE_EMPNO PRIMARY KEY (EMPNO);

Add not null constraint:

ALTER TABLE EMPLOYEE
MODIFY ENAME VARCHAR(255) NOT NULL;

c. Insert null values into the employee table and verify the result:

INSERT INTO EMPLOYEE (ENAME, JOB, MANAGER_NO, SAL, COMMISSION)
VALUES
  (NULL, 'Tester', 103, 48000, NULL);
