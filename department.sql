use pritamdb;
#creating department table
create table department
(DeptId INT PRIMARY KEY,
DeptZone VARCHAR(30),
DeptBlock VARCHAR(30),
DeptName VARCHAR(30),
DeptNo INT );
#add email column to department
ALTER TABLE department ADD Email varchar(30); 
#adding values of department table
INSERT INTO department values(1,"pritam","b","IT",05,"pri@gmail.com");
INSERT INTO department values(2,"pappu","c","FINANCE",45,"pap@gmail.com");
INSERT INTO department values(3,"arnab","a","Marketing",25,"arn@gmail.com");
INSERT INTO department values(4,"sourav","d","Electronics",35,"sou@gmail.com");
INSERT INTO department values(5,"raj","b","Electric",15,"raj@gmail.com");
#delete dept1 values from department table
DELETE FROM department WHERE DeptId=1;
#updating column
UPDATE department set DeptBlock="a" WHERE DeptId=2;
#delete rows
TRUNCATE department;
#delete table
DROP TABLE department;

