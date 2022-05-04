SQL> select * from emp;

no rows selected

SQL> desc emp;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(10)
 NAME                                               VARCHAR2(10)
 AGE                                                NUMBER(10)
 ADDRESS                                            VARCHAR2(10)
 SALARY                                             NUMBER(10)

SQL> insert into emp values(&id,'&name',&age,'&address',&salary);
Enter value for id: 10
Enter value for name: ram
Enter value for age: 33
Enter value for address: chennai
Enter value for salary: 50000
old   1: insert into emp values(&id,'&name',&age,'&address',&salary)
new   1: insert into emp values(10,'ram',33,'chennai',50000)

1 row created.

SQL> /
Enter value for id: 20
Enter value for name: raj
Enter value for age: 20
Enter value for address: chennai
Enter value for salary: 20000
old   1: insert into emp values(&id,'&name',&age,'&address',&salary)
new   1: insert into emp values(20,'raj',20,'chennai',20000)

1 row created.

SQL> /
Enter value for id: 30
Enter value for name: sai
Enter value for age: 26
Enter value for address: mumbai
Enter value for salary: 15000
old   1: insert into emp values(&id,'&name',&age,'&address',&salary)
new   1: insert into emp values(30,'sai',26,'mumbai',15000)

1 row created.

SQL> /
Enter value for id: 40
Enter value for name: sam
Enter value for age: 27
Enter value for address: hyderabad
Enter value for salary: 20000
old   1: insert into emp values(&id,'&name',&age,'&address',&salary)
new   1: insert into emp values(40,'sam',27,'hyderabad',20000)

1 row created.

SQL> /
Enter value for id: 50
Enter value for name: tom
Enter value for age: 29
Enter value for address: pune
Enter value for salary: 65000
old   1: insert into emp values(&id,'&name',&age,'&address',&salary)
new   1: insert into emp values(50,'tom',29,'pune',65000)

1 row created.

SQL> /
Enter value for id: 60
Enter value for name: jerry
Enter value for age: 30
Enter value for address: kochin
Enter value for salary: 85000
old   1: insert into emp values(&id,'&name',&age,'&address',&salary)
new   1: insert into emp values(60,'jerry',30,'kochin',85000)

1 row created.

SQL> select * from emp;

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         50000
        20 raj                20 chennai         20000
        30 sai                26 mumbai          15000
        40 sam                27 hyderabad       20000
       50 tom                29 pune            65000
        60 jerry              30 kochin          85000

6 rows selected.

SQL> select * from emp;

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         12500
        20 raj                20 chennai         20000
        30 sai                26 mumbai          15000
        40 sam                27 hyderabad       20000
        50 tom                29 pune            16250
        60 jerry              30 hyderabad       25250
        70 jack               33 bangalore       60000
        80 jill               38 bangalore       65000
        90 donald             23 chennai         10000
SQL> select max(salary) from emp;

MAX(SALARY)
-----------
      65000

SQL> select id,name from emp where salary=65000;

        ID NAME
---------- ----------
        80 jill
SQL> select id,name from emp where salary=(select max(salary) from emp);

        ID NAME
---------- ----------
        80 jill
SQL> select * from emp where salary>(select avg(salary) from emp);

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        70 jack               33 bangalore       60000
        80 jill               38 bangalore       65000
SQL> select * from emp where salary>(select avg(salary) from emp)order by age desc;

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        80 jill               38 bangalore       65000
        70 jack               33 bangalore       60000
SQL> select * from emp where salary<(select avg(salary) from emp)order by age desc;

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         12500
        60 jerry              30 hyderabad       25250
        50 tom                29 pune            16250
        40 sam                27 hyderabad       20000
        30 sai                26 mumbai          15000
        90 donald             23 chennai         10000
        20 raj                20 chennai         20000
SQL> select * from emp where salary<=(select avg(salary) from emp);

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         12500
        20 raj                20 chennai         20000
        30 sai                26 mumbai          15000
        40 sam                27 hyderabad       20000
        50 tom                29 pune            16250
        60 jerry              30 hyderabad       25250
        90 donald             23 chennai         10000

7 rows selected.

SQL> select * from emp where salary>=(select avg(salary) from emp);

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        70 jack               33 bangalore       60000
        80 jill               38 bangalore       65000
SQL> insert into emp values(100,'gow',30,'chennai',27100);

1 row created.

SQL> select * from emp where salary<=(select avg(salary) from emp);

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         12500
        20 raj                20 chennai         20000
        30 sai                26 mumbai          15000
        40 sam                27 hyderabad       20000
        50 tom                29 pune            16250
        60 jerry              30 hyderabad       25250
        90 donald             23 chennai         10000
       100 gow                30 chennai         27100

8 rows selected.

SQL> select * from emp where salary>=(select avg(salary) from emp);

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        70 jack               33 bangalore       60000
        80 jill               38 bangalore       65000
SQL> select * from emp where id in(select id from emp where salary>20000);

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         50000
        50 tom                29 pune            65000
        60 jerry              30 kochin          85000

SQL> select * from emp where id in(select id from emp where salary>=20000);

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         50000
        20 raj                20 chennai         20000
        40 sam                27 hyderabad       20000
        50 tom                29 pune            65000
        60 jerry              30 kochin          85000

SQL> update emp set salary=salary*0.25 where age in(select age from emp where age>=29);

3 rows updated.

SQL> select * from emp;

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         12500
        20 raj                20 chennai         20000
        30 sai                26 mumbai          15000
        40 sam                27 hyderabad       20000
        50 tom                29 pune            16250
        60 jerry              30 kochin          21250

6 rows selected.
SQL> update emp set salary=salary*10 where age not in(select age from emp where age>=30);

5 rows updated.

SQL> select * from emp;

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         12500
        20 raj                20 chennai        200000
        30 sai                26 mumbai         150000
        40 sam                27 hyderabad      200000
        50 tom                29 pune           162500
        60 jerry              30 hyderabad       25250
        70 jack               33 bangalore       60000
        80 jill               38 bangalore       65000
        90 donald             23 chennai        100000
       100 gow                30 chennai         27100
SQL> select * from emp where salary<any(select max(salary) from emp);

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         12500
        30 sai                26 mumbai         150000
        50 tom                29 pune           162500
        60 jerry              30 hyderabad       25250
        70 jack               33 bangalore       60000
        80 jill               38 bangalore       65000
     90 donald             23 chennai        100000
       100 gow                30 chennai         27100

SQL> select * from emp where salary=all(select salary from emp where salary<=20000);

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        10 ram                33 chennai         12500

SQL> select * from emp where salary>all(select salary from emp where salary<=20000);

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
        20 raj                20 chennai        200000
        30 sai                26 mumbai         150000
        40 sam                27 hyderabad      200000
        50 tom                29 pune           162500
        60 jerry              30 hyderabad       25250
        70 jack               33 bangalore       60000
        80 jill               38 bangalore       65000
        90 donald             23 chennai        100000
       100 gow                30 chennai         27100
SQL> delete from emp where age in(select age from emp where age>=30);

2 rows deleted.

SQL> select * from emp;

        ID NAME              AGE ADDRESS        SALARY
---------- ---------- ---------- ---------- ----------
 20 raj                20 chennai         20000
        30 sai                26 mumbai          15000
        40 sam                27 hyderabad       20000
        50 tom                29 pune            16250
