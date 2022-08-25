use labdb;

#creating emp1 table
create table emp1(
ID numeric(2),
Name varchar(10),
Basic numeric(6,2),
Designation varchar(10),
Age numeric(2)
);

#2. Change the data type of the field Basic from float to integer with required size of theEMP1 table.
alter table emp1 modify Basic integer(6);

#3. Change the field size of Name column of the EMP1 table from 10 to 15. 
alter table emp1 modify Name varchar(15);

#4. Create another table EMP_trainee with the same (changed) structure. The column ID to
#be renamed as Emp_id in the EMP_trainee table
create table emp_trainee(
Emp_id numeric(2),
Name varchar(10),
Basic numeric(6,2),
Designation varchar(10),
Age numeric(2)
);

#5. Insert following data in EMP1 table: -
insert into emp1 values
(1,'Rohit',6700,'Manager',24),
(2,'Sunil',6200,'Engineer',27),
(3,'Payel',6300,'Engineer',25),
(4,'Kunal',6700,'Trainee',28),
(5,'Sunita',6230,'Trainee',26),
(6,'Bimal',7000,'Trainee',25);

#6. Insert all rows with the designation ‘trainee’ from the EMP1 table to EMP_trainee table
insert into emp_trainee select * from emp1;

#7. Display the structure of both the tables
select * from emp1,emp_trainee;

#8. Add columns Skills (data type-varchar2 and size-10) and DOJ (data type-date) to the
#EMP1 table and add data for the Skills and DOJ columns according to your own wish. 
alter table emp1 add Skills varchar(10);
alter table emp1 add DOJ date;
update emp1 set Skills = 'java' where ID = 1;
update emp1 set Skills = 'Python' where ID = 2;
update emp1 set Skills = 'C++' where ID = 3;
update emp1 set Skills = 'SQL' where ID = 4;
update emp1 set Skills = 'java' where ID = 5;
update emp1 set Skills = 'PHP' where ID = 6;

update emp1 set DOJ = '2022-02-05' where ID = 1;
update emp1 set DOJ = '2022-02-10' where ID = 2;
update emp1 set DOJ = '2022-02-15' where ID = 3;
update emp1 set DOJ = '2022-02-20' where ID = 4;
update emp1 set DOJ = '2022-02-22' where ID = 5;
update emp1 set DOJ = '2022-02-23' where ID = 6;

#9. Change the designation of all trainees in EMP_trainee table to ‘Programmer _Trainee’.
alter table emp_trainee modify Designation varchar(40);
update emp_trainee set Designation = 'Programmer_Trainee';

#10. Update more than one row in one query in EMP1 table.
update emp1 set Skills = 'Python' where Designation = 'Trainee';

#11.Change the data type of ID in EMP1 table to varchar2 and increase the data size to 5.
alter table emp1 modify ID varchar(5);

#12.Display both the tables EMP1 and EMP_trainee.
select * from emp1,emp_trainee;

#13.Rename the column Age of EMP1 table to Age_in_Years.
alter table emp1 rename column Age to Age_in_Years;

#14.Delete the details of all the trainees from the EMP1 table.
delete from emp1 where Designation = 'Trainee';

#15.Drop the Age column from the EMP_trainee table.
alter table emp_trainee drop column Age;

#16.Drop two columns in one query from EMP_trainee table.
alter table emp_trainee drop column Basic,drop column Designation;

#17.Rename the table EMP to EMP_Mgr_Engr.
alter table emp1 rename emp_mgr_engr;

#18.Drop the table EMP_Trainee.
drop table emp_trainee;

#19.Truncate EMP_Mgr_Engr table.
truncate table emp_mgr_engr;

#20.Recover the data of EMP_Mgr_Engr. 


