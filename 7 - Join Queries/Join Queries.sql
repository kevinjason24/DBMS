SQL> create table fac(fid number(10),fname varchar(10),address varchar(10),age number(10));
Table created.

SQL> create table fcou(cid number(10),fid number(10));
Table created.

SQL> insert into fac values(&fid,'&fname','&address',&age);
Enter value for fid: 1
Enter value for fname: aaa
Enter value for address: chennai
Enter value for age: 30
old   1: insert into fac values(&fid,'&fname','&address',&age)
new   1: insert into fac values(1,'aaa','chennai',30)

1 row created.
SQL> /
Enter value for fid: 2
Enter value for fname: bbb
Enter value for address: chennai
Enter value for age: 33
old   1: insert into fac values(&fid,'&fname','&address',&age)
new   1: insert into fac values(2,'bbb','chennai',33)

1 row created.

SQL> /
Enter value for fid: 3
Enter value for fname: ccc
Enter value for address: bangalore
Enter value for age: 34
old   1: insert into fac values(&fid,'&fname','&address',&age)
new   1: insert into fac values(3,'ccc','bangalore',34)

1 row created.
SQL> /
Enter value for fid: 4
Enter value for fname: ddd
Enter value for address: kochin
Enter value for age: 30
old   1: insert into fac values(&fid,'&fname','&address',&age)
new   1: insert into fac values(4,'ddd','kochin',30)

1 row created.

SQL> /
Enter value for fid: 5
Enter value for fname: eee
Enter value for address: hyderabad
Enter value for age: 30
old   1: insert into fac values(&fid,'&fname','&address',&age)
new   1: insert into fac values(5,'eee','hyderabad',30)

1 row created.

SQL> /
Enter value for fid: 6
Enter value for fname: fff
Enter value for address: hyderabad
Enter value for age: 29
old   1: insert into fac values(&fid,'&fname','&address',&age)
new   1: insert into fac values(6,'fff','hyderabad',29)

1 row created.

SQL> /
Enter value for fid: 7
Enter value for fname: ggg
Enter value for address: chennai
Enter value for age: 33
old   1: insert into fac values(&fid,'&fname','&address',&age)
new   1: insert into fac values(7,'ggg','chennai',33)

1 row created.

SQL> select * from fac;

       FID FNAME      ADDRESS           AGE
---------- ---------- ---------- ----------
         1 aaa        chennai            30
         2 bbb        chennai            33
         3 ccc        bangalore          34
         4 ddd        kochin             30
         5 eee        hyderabad          30
     6 fff        hyderabad          29
         7 ggg        chennai            33

7 rows selected.
SQL> insert into fcou values(10,1);
1 row created.
SQL> insert into fcou values(10,2);
1 row created.

SQL> insert into fcou values(20,3);
1 row created.

SQL> insert into fcou values(30,4);
1 row created.

SQL> insert into fcou values(20,5);
1 row created.

SQL> insert into fcou values(20,6);
1 row created.

SQL> select * from fcou;
       CID        FID
---------- ----------
        10          1
        10          2
        20          3
        30          4
        20          5
        20          6
6 rows selected.
SQL> select * from fac;

       FID FNAME      ADDRESS           AGE
---------- ---------- ---------- ----------
         1 aaa        chennai            30
         2 bbb        chennai            33
         3 ccc        bangalore          34
         4 ddd        kochin             30
         5 eee        hyderabad          30
         6 fff        hyderabad          29
         7 ggg        chennai            33
7 rows selected.

SQL> select fcou.cid,fac.fname,fac.age from fac inner join fcou on fac.fid=fcou.fid;
       CID FNAME             AGE
---------- ---------- ----------
        10 aaa                30
       10 bbb                33
        20 ccc                34
        30 ddd                30
        20 eee                30
        20 fff                29
6 rows selected.

SQL> select fac.fname,fcou.cid from fac left join fcou on fcou.fid=fac.fid;
FNAME             CID
---------- ----------
aaa                10
bbb                10
ccc                20
ddd                30
eee                20
fff                20
ggg
7 row selected.

SQL> select fac.fid,fcou.cid from fac left join fcou on fcou.fid=fac.fid;
       FID        CID
---------- ----------
         1         10
         2         10
         3         20
         4         30
         5         20
         6         20
         7
7 rows selected.

SQL> select fac.fid,fcou.cid from fac right join fcou on fcou.fid=fac.fid;
       FID        CID
---------- ----------
         1         10
         2         10
         3         20
         4         30
         5         20
         6         20
6 rows selected.

SQL> insert into fcou values(40,7);
1 row created.

SQL> insert into fcou values(40,8);
1 row created.

SQL> select fac.fid,fcou.cid from fac right join fcou on fcou.fid=fac.fid;
       FID        CID
---------- ----------
         1         10
    2         10
         3         20
         4         30
         5         20
         6         20
         7         40
                   40
8 rows selected.

SQL> select fac.fid,fcou.cid from fac full join fcou on fcou.fid=fac.fid;
       FID        CID
---------- ----------
         1         10
         2         10
         3         20
         4         30
         5         20
         6         20
         7         40
                   40
8 rows selected.

SQL> select fcou.fid,fcou.cid from fac full join fcou on fcou.fid=fac.fid;
       FID        CID
---------- ----------
         1         10
         2         10
         3         20
         4         30
         5         20
         6         20
         7         40
         8         40
8 rows selected.

SQL> select fac.fid,fcou.fid from fac full join fcou on fcou.fid=fac.fid;
       FID        FID
---------- ----------
         1          1
         2          2
         3          3
         4          4
 5          5
         6          6
         7          7
                    8
8 rows selected.
