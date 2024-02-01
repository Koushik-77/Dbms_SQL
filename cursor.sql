Q. 

Declare c is select * from emp_information where emp_no<=2;
tmp emp_information%rowtype;
Begin
Open c;
loop
Fetch c into tmp;
exit when c%NotFound;
Dbms_output.put_line('EMP_no: '||tmp.emp_no);
Dbms_output.put_line('EMP_name: '||tmp.emp_name);
Dbms_output.put_line('EMP_dept: '||tmp.emp_dept);
Dbms_output.put_line('EMP_salary: '||tmp.emp_salary);
End loop;
Close c;
End;
/

Q. PL/SQL program that users cursor operation on any data base

Dedare
V_shame sailor s.Sname%type;
V_age Sailor s.age%type,
Cursor C2 is
Select Sname, age
From Sailor;
Begin
Open c2;
for i in 1__3 LOOP 
  Fetch (2 into V_Sname, V_age;
Exit when (2% NOT FOUND;
DBMS_output.put_Line (V_Sname||" "||v_age);
END Loop;
Close c2;
END;
/
