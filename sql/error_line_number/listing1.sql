CREATE OR REPLACE PROCEDURE proc1 IS
BEGIN
   DBMS_OUTPUT.put_line('running proc1');
   RAISE NO_DATA_FOUND;
END;
/
CREATE OR REPLACE PROCEDURE proc2 IS
   l_str VARCHAR2(30) := 'calling proc1';
BEGIN
   DBMS_OUTPUT.put_line(l_str);
   proc1;
END;
/
CREATE OR REPLACE PROCEDURE proc3 IS
BEGIN
   DBMS_OUTPUT.put_line('calling proc2');
   proc2;
END;
/
