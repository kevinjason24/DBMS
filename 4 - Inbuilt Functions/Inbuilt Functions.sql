SQL> create table stu1(id number(10),name varchar(10),department varchar(10),mark1 number(10),mark2 number(10),mark3 number(10));
Table created.
SQL> insert into stu1 values(&id,'&name','&department',&mark1,&mark2,&mark3);
Enter value for id: 100
Enter value for name: aaa
Enter value for department: cse
Enter value for mark1: 90
Enter value for mark2: 89
Enter value for mark3: 95
old   1: insert into stu1 values(&id,'&name','&department',&mark1,&mark2,&mark3)
new   1: insert into stu1 values(100,'aaa','cse',90,89,95)

1 row created.

SQL> /
Enter value for id: 101
Enter value for name: bbb
Enter value for department: cse
Enter value for mark1: 88
Enter value for mark2: 89
Enter value for mark3: 90
old   1: insert into stu1 values(&id,'&name','&department',&mark1,&mark2,&mark3)
new   1: insert into stu1 values(101,'bbb','cse',88,89,90)

1 row created.

SQL> /
Enter value for id: 102
Enter value for name: ccc
Enter value for department: cse
Enter value for mark1: 90
Enter value for mark2: 88
Enter value for mark3: 87
old   1: insert into stu1 values(&id,'&name','&department',&mark1,&mark2,&mark3)
new   1: insert into stu1 values(102,'ccc','cse',90,88,87)

1 row created.

SQL> /
Enter value for id: 103
Enter value for name: ddd
Enter value for department: cse
Enter value for mark1: 75
Enter value for mark2: 80
Enter value for mark3: 85
old   1: insert into stu1 values(&id,'&name','&department',&mark1,&mark2,&mark3)
new   1: insert into stu1 values(103,'ddd','cse',75,80,85)

1 row created.

SQL> select * from stu1;
        ID NAME       DEPARTMENT      MARK1      MARK2      MARK3
---------- ---------- ---------- ---------- ---------- ----------
       100 aaacse                90         89         95
       101 bbbcse                88         89         90
       102 ccccse                90         88         87
       103 dddcse                75         80         85

SQL> select count(*) from stu1;
COUNT(*)
----------
         4

SQL> insert into stu1 values(&id,'&name','&department',&mark1,&mark2,&mark3);
Enter value for id: 104
Enter value for name: eee
Enter value for department: ece
Enter value for mark1: 88
Enter value for mark2: 87
Enter value for mark3: 88
old   1: insert into stu1 values(&id,'&name','&department',&mark1,&mark2,&mark3)
new   1: insert into stu1 values(104,'eee','ece',88,87,88)

1 row created.

SQL> select count(*) from stu1;
COUNT(*)
----------
         5

SQL> select count(*) from stu1 where department='ece';
COUNT(*)
----------
         1

SQL> select count(*) from stu1 where department='cse';
COUNT(*)
----------
         4

SQL> select count(id) from stu1;
COUNT(ID)
----------
         5

SQL> select count(id) from stu1 where department='cse';
COUNT(ID)
----------
         4

SQL> select count(id) from stu1 where department='ece';
COUNT(ID)
----------
         1

SQL> select min(mark1) from stu1;
MIN(MARK1)
----------
        75

SQL> select min(mark2) from stu1;
MIN(MARK2)
----------
        80

SQL> select min(mark3) from stu1;
MIN(MARK3)
----------
        85

SQL> select min(mark1+mark2) from stu1;
MIN(MARK1+MARK2)
----------------
             155

SQL> select min(mark2+mark3) from stu1;
MIN(MARK2+MARK3)
----------------
             165

SQL> select min(mark1+mark3) from stu1;
MIN(MARK1+MARK3)
----------------
             160

SQL> select max(mark1) from stu1;
MAX(MARK1)
----------
        90

SQL> select max(mark2) from stu1;
MAX(MARK2)
----------
        89
SQL> select max(mark3) from stu1;
MAX(MARK3)
----------
        95

SQL> select max(mark1+mark2) from stu1;
MAX(MARK1+MARK2)
----------------
             179

SQL> select max(mark2+mark3) from stu1;
MAX(MARK2+MARK3)
----------------
             184

SQL> select max(mark1+mark3) from stu1;
MAX(MARK1+MARK3)
----------------
             185

SQL> select max(mark2) from stu1 where department='cse';
MAX(MARK2)
----------
        89

SQL> select min(mark1) from stu1 where department='cse';
MIN(MARK1)
----------
        75
SQL> select avg(mark1) from stu1;
AVG(MARK1)
----------
      86.2

SQL> select avg(mark2) from stu1;
AVG(MARK2)
----------
      86.6

SQL> select avg(mark3) from stu1;
AVG(MARK3)
----------
        89

SQL> select avg(mark3) from stu1 where department='cse';
AVG(MARK3)
----------
     89.25

SQL> select sum(mark1) from stu1;
SUM(MARK1)
----------
       431

SQL> select sum(mark2) from stu1;
SUM(MARK2)
----------
       433

SQL> select sum(mark3) from stu1;
SUM(MARK3)
----------
       445

SQL> select sum(mark1+mark2) from stu1;
SUM(MARK1+MARK2)
----------------
             864

SQL> select sum(mark1+mark3) from stu1;
SUM(MARK1+MARK3)
----------------
             876

SQL> select sum(mark2+mark3) from stu1;
SUM(MARK2+MARK3)
----------------
      878

SQL> select sum(mark3) from stu1 where department='cse';
SUM(MARK3)
----------
       357

SQL>
