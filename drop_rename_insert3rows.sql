18.

Create Tables:

CREATE TABLE Students (
    sid VARCHAR2(50),
    name VARCHAR2(50),
    login VARCHAR2(50),
    age INTEGER,
    gpa REAL
);

CREATE TABLE Faculty (
    fid VARCHAR2(50),
    fname VARCHAR2(50),
    sal REAL
);

CREATE TABLE Courses (
    cid VARCHAR2(50),
    cname VARCHAR2(50),
    credits INTEGER
);

a. write a sql query to drop a column in students table.

ALTER TABLE Students
DROP COLUMN gpa;

b. Write a query to rename table students to STUDENT.

ALTER TABLE Students
RENAME TO STUDENT;

c. Write a query to insert three rows in each table.

Insert into STUDENT table:

INSERT INTO STUDENT (sid, name, login, age, gpa)
VALUES ('S1', 'John Doe', 'john_doe', 20, 3.5);

INSERT INTO STUDENT (sid, name, login, age, gpa)
VALUES ('S2', 'Jane Smith', 'jane_smith', 22, 3.8);

INSERT INTO STUDENT (sid, name, login, age, gpa)
VALUES ('S3', 'Bob Johnson', 'bob_johnson', 21, 3.2);

Insert into Faculty table:

INSERT INTO Faculty (fid, fname, sal)
VALUES ('F1', 'Dr. Smith', 80000);

INSERT INTO Faculty (fid, fname, sal)
VALUES ('F2', 'Prof. Brown', 70000);

INSERT INTO Faculty (fid, fname, sal)
VALUES ('F3', 'Dr. White', 90000);

Insert into Courses table:

INSERT INTO Courses (cid, cname, credits)
VALUES ('C1', 'Math 101', 3);

INSERT INTO Courses (cid, cname, credits)
VALUES ('C2', 'History 201', 4);

INSERT INTO Courses (cid, cname, credits)
VALUES ('C3', 'Computer Science 301', 3);
