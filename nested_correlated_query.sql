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

a. Find the names of sailors who have reserved a red boat using a nested query:

SELECT s.sname FROM sailors s 
WHERE s.sid IN (
    SELECT r.sid FROM reserves r 
    WHERE r.bid IN (
        SELECT b.bid FROM boats b 
        WHERE b.color = 'red'
    )
);

b. Find the names of sailors who have reserved boat number 103 using a correlated nested query:

SELECT s.sname FROM sailor s
WHERE EXISTS (
    SELECT * FROM reserves r
    WHERE r.bid = 103 AND r.sid = s.sid
);
