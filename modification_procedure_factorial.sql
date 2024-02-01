16.

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

b) Write a PL/SQL program for displaying factorial of any number.

DECLARE
    v_number NUMBER := 5;
    v_factorial NUMBER := 1;

BEGIN
    FOR i IN 1..v_number LOOP
        v_factorial := v_factorial * i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Factorial of ' || v_number || ' is: ' || v_factorial);
END;
/
