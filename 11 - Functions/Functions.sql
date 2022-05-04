SQL> create or replace function adder(n1 in number, n2 in number)
  2  return number
  3  is
  4  n3 number(8);
  5  begin
  6  n3 :=n1+n2;
  7  return n3;
  8  end;
  9  /

Function created.

SQL> DECLARE
  2     n3 number(2);
  3  BEGIN
  4     n3 := adder(11,22);
  5     dbms_output.put_line('Addition is: ' || n3);
  6  END;
  7  /
Addition is: 33

PL/SQL procedure successfully completed.
SQL> DECLARE
  2     a number;
  3     b number;
  4     c number;
  5  FUNCTION findMax(x IN number, y IN number)
  6  RETURN number
  7  IS
  8      z number;
  9  BEGIN
 10     IF x > y THEN
 11        z:= x;
 12     ELSE
 13        Z:= y;
 14     END IF;
 15
 16     RETURN z;
 17  END;
 18  BEGIN
 19     a:= 23;
 20     b:= 45;
 21
 22     c := findMax(a, b);
 23     dbms_output.put_line(' Maximum of (23,45): ' || c);
 24  END;
 25  /
Maximum of (23,45): 45


PL/SQL procedure successfully completed.
SQL> select * from emp;

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        30 sai                26 mumbai         150000
40 sam                27 hyderabad      200000
        50 tom                29 pune            40630

SQL> create or replace function totalemp
  2  return number is
  3  total number(10):=0;
  4  begin
  5  select count(*) into total from emp;
  6  return total;
  7  end;
  8  /

Function created.

SQL> declare
  2  c number(20);
  3  begin
  4  c:=totalemp();
  5  dbms_output.put_line('Total no of emp:'||c);
  6  end;
  7  /
Total no of emp:3

PL/SQL procedure successfully completed.
SQL> DECLARE
  2     num number;
  3     factorial number;
  4
  5  FUNCTION fact(x number)
  6  RETURN number
  7  IS
  8     f number;
  9  BEGIN
 10     IF x=0 THEN
 11        f := 1;
 12     ELSE
 13        f := x * fact(x-1);
 14     END IF;
 15  RETURN f;
 16  END;
 17
18  BEGIN
 19     num:= 6;
 20     factorial := fact(num);
 21     dbms_output.put_line(' Factorial '|| num || ' is ' || factorial);
 22  END;
 23  /
Factorial 6 is 720
