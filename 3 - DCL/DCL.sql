SQL> create table class1(id number(10),name varchar(10));

Table created.

SQL> insert into class1 values(5,'rahul');

1 row created.

SQL> update class1 set name='raj' where id=5;

1 row updated.

SQL> savepoint A;

Savepoint created.

SQL> insert into class1 values(6,'ram');

1 row created.

SQL> insert into class1 values(7,'vibhav');

1 row created.

SQL> savepoint B;

Savepoint created.

SQL> insert into class1 values(8,'sai');

1 row created.

SQL> savepoint C;

Savepoint created.

SQL> select * from class1;

        ID NAME
---------- ----------
         5 raj
         6 ram
         7 vibhav
         8 sai

SQL> rollback to B;

Rollback complete.

SQL> select * from class1;

        ID NAME
---------- ----------
         5 raj
         6 ram
         7 vibhav

SQL> rollback to A;

Rollback complete.

SQL> select * from class1;

        ID NAME
---------- ----------
         5 raj

SQL> insert into class1 values(6,'ram');

1 row created.

SQL> insert into class1 values(7,'vibhav');

1 row created.

SQL> insert into class1 values(8,'sai');

1 row created.

SQL>savepoint D;

Savepoint created.

SQL> insert into class1 values(9,'siva');

1 row created.

SQL> commit;

Commit complete.

SQL> select * from class1;

        ID NAME
---------- ----------
         5 raj
         6 ram
         7 vibhav
         8 sai
         9 siva

SQL> rollback to D;
rollback to D
*
ERROR at line 1:
ORA-01086: savepoint 'D' never established


SQL> insert into class1 values(10,'tom');

1 row created.

SQL> savepoint E;

Savepoint created.

SQL> insert into class1 values(11,'sam');

1 row created.

SQL> savepoint F;

Savepoint created.

SQL> rollback to E;

Rollback complete.

SQL> select * from class1;

        ID NAME
---------- ----------
         5 raj
         6 ram
         7 vibhav
         8 sai
         9 siva
        10 tom

6 rows selected.

SQL> commit;

Commit complete.

SQL> select * from class1;

        ID NAME
---------- ----------
         5 raj
         6 ram
         7 vibhav
         8 sai
         9 siva
        10 tom

6 rows selected.

SQL> rollback to F;
rollback to F
*
ERROR at line 1:
ORA-01086: savepoint 'F' never established
