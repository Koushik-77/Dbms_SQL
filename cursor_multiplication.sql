14.

a) Write a PL/SQL program that uses cursor operation on any data base:

DECLARE
    v_sname VARCHAR2(10);
    v_age VARCHAR2(10);
    v_rating NUMBER(4);
    CURSOR c1 IS
        SELECT sname, age, rating
        FROM sailors;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO v_sname, v_age, v_rating;
        EXIT WHEN c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_sname || ' ' || v_age || ' ' || v_rating);
    END LOOP;
    CLOSE c1;
END;
/

b) Write a PL/SQL program for displaying multiplication of any number:

DECLARE
    v_number NUMBER := 7;

BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(v_number || ' * ' || i || ' = ' || v_number * i);
    END LOOP;
END;
/

