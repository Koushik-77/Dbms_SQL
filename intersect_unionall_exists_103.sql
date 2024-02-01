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

a. Find the names of sailors who have reserved both a red and a green boat using INTERSECT:

SELECT s.sname 
FROM sailors s, reserves r, boats b 
WHERE s.sid = r.sid AND r.bid = b.bid AND b.color = 'red' 
INTERSECT 
SELECT s2.sname 
FROM sailors s2, reserves r2, boats b2 
WHERE s2.sid = r2.sid AND r2.bid = b2.bid AND b2.color = 'green';

b. Find the names of sailors who have reserved both a red and a green boat using UNION ALL:

SELECT s.sname 
FROM sailors s, reserves r, boats b 
WHERE s.sid = r.sid AND r.bid = b.bid AND b.color = 'red'
UNION ALL
SELECT s2.sname 
FROM sailors s2, reserves r2, boats b2 
WHERE s2.sid = r2.sid AND r2.bid = b2.bid AND b2.color = 'green'
);


c. Find the names of sailors who have reserved boat 103 using EXISTS:

SELECT s.sname 
FROM sailors s 
WHERE EXISTS (
    SELECT * FROM reserves r 
    WHERE r.bid = 103 AND r.sid = s.sid
);
