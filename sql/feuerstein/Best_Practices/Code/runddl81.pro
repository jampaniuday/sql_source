CREATE OR REPLACE PROCEDURE runddl (
   ddl_in in VARCHAR2)
   AUTHID CURRENT_USER 
IS
BEGIN
   EXECUTE IMMEDIATE ddl_in;
EXCEPTION
   WHEN OTHERS
   THEN
      DBMS_OUTPUT.PUT_LINE (SQLERRM)
      DBMS_OUTPUT.PUT_LINE (ddl_in);
      RAISE;
END;
/