Create table emp( empno number(5), ename VarChar(15), job VarChar(10), deptno number(3) ,sal number(5));
desc emp;

create table customer as select empno, ename, job from emp;
desc customer;

truncate table emp;
desc emp;

alter table emp add (phoneno char(20));
desc emp;

alter table empmodify(ename not null);
desc emp;

alter table emp rename column empno to eno;
desc emp;

--single line comment
/*multi line comment
another comment*/
select *from emp;

drop table emp;

Create table data (pid number(5), firstname VarChar(15), lastname VarChar(15), city VarChar(10));
desc data;

insert into data values
(01, 'Ratan', 'Tata', 'Mumbai');

insert into data values 
(02, 'Elon', 'Musk', 'Bay Area');

insert into data values 
(03, 'Jimmy', 'Donaldson', 'Greenville');

insert into data (pid,firstname) values(04,'James');

select *from data;

select pid, firstname from data;

select firstname, lastname from data where pid<2;

select* from data where (pid=01 or pid=03);

select* from data where pid between 1 and 4;

select* from data where lastname is null;

delete from data where pid=04;