SQL> insert into emp1(id,name,dept) values (1,'aaa','cse');

1 row created.

SQL> select * from emp1;

        ID NAME       DEPT
---------- ---------- ----------
         1 aaa        cse

SQL> insert into emp1 values (2,'bbb','cse');

1 row created.

SQL> select * from emp1;

        ID NAME       DEPT
---------- ---------- ----------
         1 aaa        cse
         2 bbb        cse

SQL> insert into emp1 values(&id,'&name','&dept');
Enter value for id: 3
Enter value for name: ccc
Enter value for dept: cse
old   1: insert into emp1 values(&id,'&name','&dept')
new   1: insert into emp1 values(3,'ccc','cse')

1 row created.

SQL> select * from emp1;

        ID NAME       DEPT
---------- ---------- ----------
         1 aaa        cse
         2 bbb        cse
         3 ccc        cse

SQL> insert into emp1 values(&id,'&name','&dept');
Enter value for id: 4
Enter value for name: ddd
Enter value for dept: cse
old   1: insert into emp1 values(&id,'&name','&dept')
new   1: insert into emp1 values(4,'ddd','cse')

1 row created.

SQL> /
Enter value for id: 5
Enter value for name: eee
Enter value for dept: cse
old   1: insert into emp1 values(&id,'&name','&dept')
new   1: insert into emp1 values(5,'eee','cse')

1 row created.

SQL> select * from emp1;

        ID NAME       DEPT
---------- ---------- ----------
         1 aaa        cse
         2 bbb        cse
         3 ccc        cse
         4 ddd        cse
         5 eee        cse
SQL> update emp1 set name='BBB' where id=2;

1 row updated.

SQL> select * from emp1;

        ID NAME       DEPT
---------- ---------- ----------
         1 aaa        cse
         2 BBB        cse
         3 ccc        cse
         4 ddd        cse
         5 eee        cse
SQL> update emp1 set name='CCC',dept='ece' where id=3;

1 row updated.

SQL> select * from emp1;

        ID NAME       DEPT
---------- ---------- ----------
         1 aaa        cse
         2 BBB        cse
         3 CCC        ece
         4 ddd        cse
         5 eee        cse
SQL> update emp1 set name='aaa';

5 rows updated.

SQL> select * from emp1;

        ID NAME       DEPT
---------- ---------- ----------
         1 aaa        cse
         2 aaa        cse
         3 aaa        ece
         4 aaa        cse
         5 aaa        cse
SQL> create table emp2(id number(10),name varchar(10),dept varchar(10));

Table created.

SQL> insert into emp2 select * from emp1;

5 rows created.

SQL> select * from emp2;

        ID NAME       DEPT
---------- ---------- ----------
    1 aaa        cse
         2 aaa        cse
         3 aaa        ece
         4 aaa        cse
         5 aaa        cse
SQL> delete from emp2 where id=1;

1 row deleted.

SQL> select * from emp2;

        ID NAME       DEPT
---------- ---------- ----------
         2 aaa        cse
         3 aaa        ece
         4 aaa        cse
         5 aaa        cse
SQL> delete from emp2 where dept='cse';

3 rows deleted.

SQL> select * from emp2;

        ID NAME       DEPT
---------- ---------- ----------
         3 aaa        ece
SQL> delete from emp2;

1 row deleted.

SQL> select * from emp2;

no rows selected
SQL> select * from emp2;

no rows selected

SQL> desc emp2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(10)
 NAME                                               VARCHAR2(10)
 DEPT                                               VARCHAR2(10)
SQL> drop table emp2;

Table dropped.

SQL> select * from emp2;
select * from emp2
              *
ERROR at line 1:
ORA-00942: table or view does not exist
SQL> select * from emp1;

        ID NAME       DEPT
---------- ---------- ----------
         1 aaa        cse
         2 aaa        cse
         3 aaa        ece
         4 aaa        cse
         5 aaa        cse

SQL> truncate table emp1;

Table truncated.

SQL> select * from emp1;

no rows selected

SQL> desc emp1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(10)
 NAME                                               VARCHAR2(10)
 DEPT                                               VARCHAR2(10)

SQL> drop table emp1;

Table dropped.

SQL> select * from emp1;
