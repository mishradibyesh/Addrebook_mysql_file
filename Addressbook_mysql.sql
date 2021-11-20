#UC1 :- creating database

create database addressbookservice;
show databases;

#UC2 creating table

use addressbookservice;
select database();
create table AddressBook
 ( 
 first_Name varchar(30) not null ,
 last_name varchar(30) not null,
 address varchar(50) not null,
 city varchar (30) not null ,
 state varchar (30) not null ,
 zip int not null ,
 phoneNumber long ,
 email varchar (50)
 );
 describe AddressBook;
 
 #UC3 : Inserting data to table
 
 insert into AddressBook(first_Name , last_Name ,address , city , state ,zip , phoneNumber ,email) value
 ('Dibyesh' , 'mishra' , 'ballia' , 'sikandarpur' ,'uttarpradesh' , 234562 , 8577858332 ,'dibyesh@gmail.com');
 insert into AddressBook(first_Name , last_Name ,address , city , state ,zip , phoneNumber ,email) value
 ('Gyanesh' , 'mishra' , 'citycenter' , 'gwalior' ,'madhyapradesh' , 233562 , 8266850772 ,'gyanesh@gmail.com');
 insert into AddressBook(first_Name , last_Name ,address , city , state ,zip , phoneNumber ,email) value
 ('Abhay' , 'mishra' , 'khandala' , 'pune' ,'maharastra' , 33362 , 983733332 ,'abhay@gmail.com');
  select * from AddressBook;
  
#UC4 : ability to edit existing contact using person's name

update AddressBook set city = 'ballabhGrah' where first_Name = 'Gyanesh' ;   
select * from AddressBook;

#UC5 : ability to edit existing contact using person's name

delete from addressbook where first_Name = 'Abhay' ;
 
#UC6 : ability to retrieve person belonging to a city or state

select * from  addressbook where city = 'ballabhGrah' or state = 'madhyapradesh';
 
#UC7 : ability to understand size of the addressBook

select COUNT(city)  FROM addressbook where city = 'sikandarpur' or state = 'uttarpradesh';
select * from AddressBook;

#UC8 : ability to sort alphabatically
select * from AddressBook order by first_Name;


