SQL> declare
  2  a integer:=10;
  3  begin
  4  dbms_output.put_line(a);
  5  end;
  6  /
10

PL/SQL procedure successfully completed.
SQL> declare
  2  a varchar(10):='hello';
  3  begin
  4  dbms_output.put_line(a);
  5  end;
  6  /
hello

PL/SQL procedure successfully completed.
SQL>  declare
  2  a integer:=10;
  3  begin
  4  dbms_output.put_line('value of a:'||a);
  5  end;
  6  /
value of a:10

PL/SQL procedure successfully completed.
SQL> declare
  2  pi constant number:=3.14;
  3  begin
  4  dbms_output.put_line(pi);
  5  end;
  6  /
3.14

PL/SQL procedure successfully completed.
SQL> declare
  2  a integer:=10;
  3  b integer:=20;
  4  c integer;
  5  begin
  6  c:=a+b;
  7  dbms_output.put_line(c);
  8  end;
  9  /
30
IF-ELSE
PL/SQL procedure successfully completed.
SQL> declare
  2  a integer:=30;
  3  begin
  4  if(a<20) then
  5  dbms_output.put_line('a is less than 20');
  6  else
  7  dbms_output.put_line('a is not less than 20');
  8  end if;
  9  end;
 10  /
a is not less than 20
CASE STATEMENT
PL/SQL procedure successfully completed.
SQL> DECLARE
  2     grade char(1) := 'A';
  3  BEGIN
  4     CASE grade
  5        when 'A' then dbms_output.put_line('Excellent');
  6        when 'B' then dbms_output.put_line('Very good');
  7        when 'C' then dbms_output.put_line('Good');
  8        when 'D' then dbms_output.put_line('Average');
  9        when 'F' then dbms_output.put_line('Passed with Grace');
 10        else dbms_output.put_line('Failed');
 11     END CASE;
 12  END;
 13  /
Excellent
LOOP
PL/SQL procedure successfully completed.
SQL> DECLARE
  2  i NUMBER := 1;
  3  BEGIN
  4  LOOP
  5  EXIT WHEN i>10;
  6  DBMS_OUTPUT.PUT_LINE(i);
  7  i := i+1;
  8  END LOOP;
  9  END;
 10  /
1
2
3
4
5
6
7
8
9
10
WHILE LOOP
PL/SQL procedure successfully completed.
SQL> DECLARE
  2  i INTEGER := 1;
  3  BEGIN
  4  WHILE i <= 10 LOOP
  5  DBMS_OUTPUT.PUT_LINE(i);
  6  i := i+1;
  7  END LOOP;
  8  END;
  9  /
1
2
3
4
5
6
7
8
9
10
FOR LOOP
PL/SQL procedure successfully completed.
SQL> DECLARE
  2  VAR1 NUMBER;
  3  BEGIN
  4  VAR1:=10;
  5  FOR VAR2 IN 1..10
  6  LOOP
  7  DBMS_OUTPUT.PUT_LINE (VAR1*VAR2);
  8  END LOOP;
  9  END;
 10  /
10
20
30
40
50
60
70
80
90
100
