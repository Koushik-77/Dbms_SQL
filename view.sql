Q. PL/SQL procedure to view some specificed   columns from a table

set serveroutput on;
Create or replace procedure p_sail5 (sid1 in num)
V-Sname char(20);
V-age number (6);
begin
Select sname, age into v_sname, v_age from
Sailors where sid=sid1;
dbms_output.put_line('sname'||v_sname); 
dbms_output.put_line('age:'||v_age);
end;
  /
    
execute p_sail5(22);

Q. modification of procedure to view some specified columns from a table

create or replace procedure psailors (
V-sid1 in sailors.sid%type, 
V_sname in Sailors.sname%type,
V_age in Sailors.age%type) is 
begin
Update Sailors Set Sname = v_sname, age = v_age where
Sid=V-sid1;
Commit;
end;
/

execute psailors(71,'jack',45);
