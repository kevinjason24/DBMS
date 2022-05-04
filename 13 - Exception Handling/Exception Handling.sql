SQL> DECLARE
c_id emp.id%type:=10;
 c_name emp.name%type;
c_addr emp.address%type;
begin
 SELECT name, address into c_name,c_addr FROM emp where id=c_id;
dbms_output.put_line('Name:'||c_name);
dbms_output.put_line('Address:'||c_addr);
exception
when no_data_found then dbms_output.put_line('no such customer');
when others then dbms_output.put_line('error');
end;
/
no such customer

PL/SQL procedure successfully completed.
SQL> declare
c_id emp.id%type:=30;
c_name emp.name%type;
c_addr emp.address%type;
 begin
SELECT name, address into c_name,c_addr FROM emp where id=c_id;
dbms_output.put_line('Name:'||c_name);
dbms_output.put_line('Address:'||c_addr);
exception
when no_data_found then dbms_output.put_line('no such customer');
when others then dbms_output.put_line('error');
end;
/
Name:sai
Address:mumbai

PL/SQL procedure successfully completed.
USER DEFINED 
SQL> declare
c_id emp.id%type:=&id;
c_name emp.name%type;
c_addr emp.address%type;
ex_invalid_id exception;
begin
if c_id<=0 then
raise ex_invalid_id;
else
select name,address into c_name,c_addr from emp where id=c_id;
dbms_output.put_line('name:'||c_name);
dbms_output.put_line('address:'||c_addr);
end if;
exception
when ex_invalid_id then dbms_output.put_line('id should be greater than zero');
when no_data_found then dbms_output.put_line('no such customer');
when others then dbms_output.put_line('error');
end;
 /
Enter value for id: -6
old   2:   c_id emp.id%type:=&id;
new   2:   c_id emp.id%type:=-6;
id should be greater than zero

PL/SQL procedure successfully completed.

SQL> /
Enter value for id: 30
old   2:   c_id emp.id%type:=&id;
new   2:   c_id emp.id%type:=30;
name:sai
address:mumbai

