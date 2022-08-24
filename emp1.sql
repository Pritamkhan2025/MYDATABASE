use pritamdb;
create table emp1(
ID numeric(2),
ID_Name varchar(10),
Basic numeric(6,2),
Designation varchar(10),
Age numeric(2)
);
alter table emp1 modify Basic integer(6);
alter table emp1 modify ID_Name varchar(15);
create table emp_trainee(
Emp_id numeric(2),
ID_Name varchar(10),
Basic numeric(6,2),
Designation varchar(10),
Age numeric(2)
);
insert into emp1 values
(1,'Pritam',7500,'Manager',24),
(2,'Arnab',7200,'Engineer',23),
(3,'Sourav',8300,'Engineer',27),
(4,'Babin',6700,'Trainee',24),
(5,'Rivu',8230,'Trainee',25),
(6,'Rik',7000,'Trainee',24);
insert into emp_trainee select * from emp1;
select * from emp1,emp_trainee;
alter table emp1 add Skill varchar(15) after basic;
alter table emp1 add DOJ date after age;
update emp1 set Skills = 'java' where ID = 1;
update emp1 set Skills = 'Python' where ID = 2;
update emp1 set Skills = 'C++' where ID = 3;
update emp1 set Skills = 'SQL' where ID = 4;
update emp1 set Skills = 'java' where ID = 5;
update emp1 set Skills = 'Selenium' where ID = 6;

update emp1 set DOJ = '2022-02-05' where ID = 1;
update emp1 set DOJ = '2022-02-10' where ID = 2;
update emp1 set DOJ = '2022-02-15' where ID = 3;
update emp1 set DOJ = '2022-02-20' where ID = 4;
update emp1 set DOJ = '2022-02-22' where ID = 5;
update emp1 set DOJ = '2022-02-23' where ID = 6;
alter table emp_trainee modify Designation varchar(30);
update emp_trainee set Designation = 'Programmer_Trainee';
update emp1 set Skills = 'Python' where Designation = 'Trainee';
alter table emp1 modify ID varchar(5);
select * from emp1,emp_trainee;
delete from emp1 where Designation = 'Trainee'; 
alter table emp_trainee DROP COLUMN Age;


