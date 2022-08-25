use labdb;
#creating customer table
create table CUSTOMER
(Cust_id varchar(5),
Fname varchar(15),
Lname varchar(15),
Area Char(2),
Phone numeric(10),
DOB date,
Payment numeric(10,2));

#inserting customer value
insert into customer values("A01","Ivan","Ross","SA",6125467,"1986-01-15",800.50),
("A02","Vandana","Ray","MU",5560379,"1987-12-20",1000.75),
("A03","Pramada","Jauguste","DA",4560389,"1967-07-25",500.00),
("A04","Basu","Navindi","BA",6125401,"1989-02-28",500.50),
("A05","Ravi","Shridhar","NA",null,"1986-01-15",800.50),
("A06","Rukmini","Aiyer","GH",5125274,"1987-07-23",1500.50);

#2. Display the structure of the table you have created.
desc customer;

#3. Display the data of the created table
select * from customer;


#6. Update the phone numbers of customer A02 and A04.
update customer set Phone = 9080706 where cust_id ="A02";
update customer set Phone = 9080707 where cust_id ="A04";

#7. Update the date of birth of customer A03 and A05.
update customer set DOB = "1968-07-25" where cust_id ="A03";
update customer set DOB = "1977-08-15" where cust_id ="A05";

#8. Display the updated table.
select * from customer;

#9. Delete 2 rows from the table for customers A01 and A05
delete from customer where cust_id = "A01";
delete from customer where cust_id = "A05";

#10. Delete all the rows from the table
delete from customer;
desc customer;

#11. Insert 5 records according to your own wish.
insert into customer values("A01","Ivan","Ross","SA",6125467,"86-01-15",800.50),
("A02","Vandana","Ray","MU",5560379,"87-12-20",1000.75),
("A03","Pramada","Jauguste","DA",4560389,"67-07-25",500.00),
("A04","Basu","Navindi","BA",6125401,"89-02-28",500.50),
("A05","Ravi","Shridhar","NA",null,"86-01-15",800.50),
("A06","Rukmini","Aiyer","GH",5125274,"87-07-23",1500.50);

#12. Update one record based on any criteria according to your own wish.
update customer set Phone = 9080403 where cust_id = "A05";

#13. Delete any 1 record from the table based on particular criteria
delete from customer where Area = "BA"; 