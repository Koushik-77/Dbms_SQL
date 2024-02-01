Create table sailors:

CREATE TABLE sailors (
    sid NUMBER,
    sname VARCHAR(255),
    rating NUMBER,
    age REAL
);

Create table reserves:

CREATE TABLE reserves (
    sid NUMBER,
    bid NUMBER,
    day DATE,
);

Create table boats:

CREATE TABLE boats (
    bid NUMBER,
    bname VARCHAR(255),
    color VARCHAR(50)
);

a. Find the average age of sailors with a rating of 10:

SELECT AVG(age) AS avg_age
FROM sailors
WHERE rating = 10;

b. Find the name and age of the oldest sailor:

SELECT sname, age
FROM sailors
WHERE age = (SELECT MAX(age) FROM sailors);

c. Find the age of the youngest sailor for each rating level:

SELECT rating, MIN(age) 
FROM sailors
GROUP BY rating, sname;

d. Find the average age of sailors for each rating level that has at least two sailors:

SELECT rating, AVG(age) AS avg_age
FROM sailors
GROUP BY rating
HAVING COUNT(*) >= 2;
