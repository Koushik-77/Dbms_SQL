15.

a) Write a PL/SQL code for modification of procedure to view some specified columns 
from a table.

CREATE OR REPLACE PROCEDURE view_specific_columns (
    p_column1_value IN your_table.column1%TYPE
) IS
    v_column2 your_table.column2%TYPE;
    v_column3 your_table.column3%TYPE;
BEGIN
    SELECT column2, column3
    INTO v_column2, v_column3
    FROM your_table
    WHERE column1 = p_column1_value;
    DBMS_OUTPUT.PUT_LINE('Column2: ' || v_column2);
    DBMS_OUTPUT.PUT_LINE('Column3: ' || v_column3);
END view_specific_columns;
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