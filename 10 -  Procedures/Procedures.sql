SQL> create table proc(id number(10),name varchar(10));
Table created.

SQL> create or replace procedure "INSERTUSER"
(id IN NUMBER,
name IN VARCHAR2)
is
begin
insert into proc values(id,name);
end;
 /

Procedure created.
SQL> BEGIN
 insertuser(101,'Rahul');
  dbms_output.put_line('record inserted successfully');
END;
/
record inserted successfully
PL/SQL procedure successfully completed.

SQL> select * from proc;

        ID NAME
---------- ----------
       101 Rahul
