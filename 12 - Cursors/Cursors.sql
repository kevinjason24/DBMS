SQL> DECLARE
total_rows number(2);
BEGIN
UPDATE  emp
SET salary = salary + 5000;
IF sql%notfound THEN
dbms_output.put_line('no customers updated');
ELSIF sql%found THEN
 total_rows := sql%rowcount;
dbms_output.put_line( total_rows || ' customers updated ');
END IF;
 END;
/
3 customers updated

PL/SQL procedure successfully completed.

SQL> select * from emp;

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        30 sai                26 mumbai         155000
        40 sam                27 hyderabad      205000
        50 tom                29 pune            45630
EXPLICIT CURSOR
SQL> DECLARE
 c_id emp.id%type;
c_name emp.name%type;
c_addr emp.address%type;
CURSOR c_emp is
SELECT id, name, address FROM emp;
begin
open c_emp;
 loop
FETCH c_emp into c_id, c_name, c_addr;
 EXIT WHEN c_emp%notfound;
dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);
 end loop;
close c_emp;
end;
/
30 sai mumbai
40 sam hyderabad
50 tom pune
