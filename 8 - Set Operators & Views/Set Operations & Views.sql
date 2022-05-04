SQL> create table z(id number(10),name varchar(10));
Table created.

SQL> insert into z values(1,'a');
1 row created.

SQL> insert into z values(2,'b');
1 row created.

SQL> create table z1(id number(10),name varchar(10));
Table created.

SQL> insert into z1 values(2,'b');
1 row created.

SQL> insert into z1 values(3,'c');
1 row created.

SQL> insert into z1 values(4,'d');
1 row created.

SQL> select * from z;
	ID NAME
---------- ----------
	1 a
	2 b

SQL> select * from z1;
	ID NAME
---------- ----------
	2 b
	3 c
	4 d


SQL> select * from z union select * from z1;
	ID NAME
---------- ----------
	1 a
	2 b
	3 c
	4 d

SQL> select * from z union all select * from z1;
	ID NAME
---------- ----------
	1 a
	2 b
	2 b
	3 c
	4 d
SQL> select * from z intersect select * from z1;
	ID NAME
---------- ----------
	2 b

SQL> select * from z minus select * from z1;
	ID NAME
---------- ----------
	1 a

SQL> select * from z1 minus select * from z;
	ID NAME
---------- ----------
	3 c
	4 d

