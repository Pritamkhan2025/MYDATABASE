use pritamdb;
create table customer(
cust_id varchar(15),
Fname varchar(15),
Area char(2),
Phone numeric(10),
DOB date,
Payment numeric
);
insert into customer values('A01','sayan','SA',6125467,'1986-01-15',800.50);
insert into customer values('A02','pritam''MU',5560379,'1987-12-20',1000.75);
insert into customer values('A03','aditya','DA',4560389,'1967-07-25',500.00);
insert into customer values('A04','jaita','BA',6125401,'1956-02-15',860.00);
insert into customer values('A05','Ravi','NA',null,'1989-02-15',500.50);
insert into customer values('A06','tanmoy','GH',5125274,'1987-07-23',1500.50);
update customer set Phone = 9080706 where cust_id ='A02';
update customer set Phone = 9080707 where cust_id ='A04';
update customer set DOB = '1968-07-25' where cust_id ='A03';
update customer set DOB = '1977-08-15' where cust_id ='A05';
delete from customer where cust_id = 'A01';
delete from customer where cust_id = 'A05';
delete from customer;
insert into customer values('A01','Ivan','SA',6125467,'1986-01-15',800.50);
insert into customer values('A02','Vandana','MU',5560379,'1987-12-20',1000.75);
insert into customer values('A03','Pramada','DA',4560389,'1967-07-25',500.00);
insert into customer values('A04','Basu','BA',6125401,'1956-02-15',860.00);
insert into customer values('A05','Ravi','NA',null,'1989-02-15',500.50);
update customer set Phone = 9080403 where cust_id = 'A05';
delete from customer where Area = 'BA'; 
