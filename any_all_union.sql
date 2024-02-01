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

a. Find sailors whose rating is better than some sailor called Horatio. (Any):

SELECT s.sname FROM sailor s
WHERE s.rating > ANY (
    SELECT rating
    FROM sailor
    WHERE sname = 'Horatio'
);

b. Find the sailors with the highest rating. (All):

SELECT s.sname FROM sailor s
WHERE s.rating >= ALL (
    SELECT rating
    FROM sailor
);

c. Find the names of sailors who have reserved a red and a green boat. (Union):

SELECT s.sname FROM sailor s
WHERE s.sid IN (
    SELECT r.sid FROM reserves r, boats b
    WHERE r.bid = b.bid AND b.color = 'red'
)
UNION
SELECT s.sname FROM sailor s
WHERE s.sid IN (
    SELECT r.sid FROM reserves r, boats b
    WHERE r.bid = b.bid AND b.color = 'green'
);
