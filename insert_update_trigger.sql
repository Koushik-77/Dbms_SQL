12.
to insert :

CREATE OR REPLACE TRIGGER t1
BEFORE INSERT ON sailors
FOR EACH ROW
BEGIN
    :NEW.sname := UPPER(:NEW.sname);
END;
/

to update :

CREATE OR REPLACE TRIGGER t222
AFTER UPDATE OF sid
ON sailors
FOR EACH ROW
BEGIN
    IF (:NEW.sid < 80) THEN
        RAISE_APPLICATION_ERROR(-20017, 'Cannot update: SID must be 80 or greater');
    END IF;
END;
/
