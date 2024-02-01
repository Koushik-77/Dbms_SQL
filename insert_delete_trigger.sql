13.
to instal :

CREATE OR REPLACE TRIGGER t1
BEFORE INSERT ON sailors
FOR EACH ROW
BEGIN
    :NEW.sname := UPPER(:NEW.sname);
END;
/

to delete :

CREATE OR REPLACE TRIGGER t1
AFTER DELETE
ON sailors
FOR EACH ROW
BEGIN
    IF (:OLD.sid = 22) THEN
        RAISE_APPLICATION_ERROR(-20019, 'You cannot delete this row');
    END IF;
END;
/
