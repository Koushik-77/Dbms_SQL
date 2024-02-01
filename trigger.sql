Q. create a trigger to insert data into a table

create or replace trigger the
before
insert on sailers
for each row
begin 
:new_name:= upper (:new.s_name); 
end;
/

Q. create a triggerr to ubdate data into a table

create trigger tz 
after 
update of sid on sailors
for each row
begin
if (:new.sid <80) then
raise_application_error(-20017,"Cont update");
end if;
end;
/

Q. create a trigger to delete data into a table

create trigger t6 
after 
delete on sailors 
for each row
begin
if :old.sid=22 than 
raise_application_error(-20019, 'you cant delete this row'); 
endif;
end;
/
