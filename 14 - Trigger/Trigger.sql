SQL> CREATE OR REPLACE TRIGGER display_salary_changes
 BEFORE DELETE OR INSERT OR UPDATE ON emp
FOR EACH ROW
WHEN (NEW.ID > 0)
DECLARE
 sal_diff number;
BEGIN
sal_diff := :NEW.salary  - :OLD.salary;
dbms_output.put_line('Old salary: ' || :OLD.salary);
dbms_output.put_line('New salary: ' || :NEW.salary);
dbms_output.put_line('Salary difference: ' || sal_diff);
END;
/

Trigger created.
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
Old salary: 155000
New salary: 160000
Salary difference: 5000
Old salary: 205000
New salary: 210000
Salary difference: 5000
Old salary: 45630
New salary: 50630
Salary difference: 5000
3 customers updated

