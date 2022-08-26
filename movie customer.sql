use assignmentdb;
create table customer1(
cust_id varchar(15),
Fname varchar(30) not null,
Lname varchar(30),
Area char(2) not null,
Phone numeric(10),
primary key(cust_id)
);
insert into customer1 values('A01','Ivan','Ross','SA',6125467),
('A02','Vandana','Roy','MU',5560379),
('A03','Pramada','Jauguste','DA',4560389),
('A04','Basu','Navindi','BA',6125401),
('A05','Ravi','Shridhar','NA',null),
('A06','Rukmini','Aiyer','GH',5125274);

create table movie(
Mv_no int primary key,
cust_id varchar(15) references customer1(cust_id),
Title varchar(20) not null,
Star char(2) not null,
Price numeric(3));
insert into movie values(1,'A02','Bloody','JC',181),
(2,'A04','The Firm','TC',200),
(3,'A01','Pretty Woman','RG',151),
(4,'A06','Home Alone','MC',150),
(5,'A05','The Fugitive','MF',200),
(6,'A03','Coma','MD',100),
(7,'A02','Dracula','GO',150),
(8,'A06','Quick Change','BM',100),
(9,'A03','Gone With The Wind','CB',200),
(10,'A05','Carry on Doctor','LP',100);


#2. Prove that entity integrity constraint is ensured by both the tables. (2 conditions to be checked).
#3. Prove that referential integrity constraint is ensured by both the tables.
#4. Prove that domain integrity constraint is ensured by the Movie table.
#5. Display the movie titles, whose price is greater than 100 but less than 200.
select Title  from movie where Price>100 and Price<200;

#6. Display the cust_id who have seen movies having stars as either JC or TC or MC.
select Cust_id from movie where Star='JC' or Star='TC' or Star='MC';

#7. Display the details of those customers who have an A in their area name.
select * from customer1 where Area like '%A%'; 

#8. Display the movie titles, whose price is within 180 and the movie titles are of exactly 6 characters.
select Title from movie where Price<180 and length(Title)=6;

#9. Display the movie name, their original prices and the prices after 10% increment.
select title,price,price+(price*10/100) as 'incremented' from movie;

#10.Display all the customer details in the following way:
#‘Ivan Ross stays in SA and his phone number is 6125467.’
select Fname,Lname,Area,Phone from customer1 where Cust_id = 'A01';

#11.Add a not null constraint to the Lname field in Customer.
alter table customer1 modify Lname varchar(30);

#12.Display the customer’s name whose phone number is not recorded.
select Fname from customer1 where Phone is null;

#13.Add the phone number according to your own wish for the person mentioned in problem no 12.
update customer1 set phone=6524526 where phone is null;

#14.Display the unique customer ids from movie table.
select distinct Cust_id from movie;

#15.Remove the not null constraint from Star column in movie table.
alter table movie modify Star char(2);

#16.Delete any row from the Customer table. If you cannot delete, then note the error message displayed.
delete from customer1 where Fname='Dracula';

#17.Delete any row from the Movie table. If you cannot delete, then note the error message displayed.
delete from movie where Title='Ravi';

#18.Drop the Customer table. If you cannot drop, then note the error message displayed.
drop table customer1;

#19.Drop the Movie table. If you cannot drop, then note the error message displayed.
drop table movie;

#20.Drop the foreign key from Movie table
alter table movie drop foreign key Cust_id;