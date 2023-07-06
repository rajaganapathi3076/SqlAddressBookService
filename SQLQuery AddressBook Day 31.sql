-----------------------------UC1---------------------------------------
create database AddressBookService
use AddressBookService
------------------------------UC2--------------------------------------------
create table AddressBook
(
First_Name varchar(255),
Last_Name varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
ZipCode int,
PhoneNumber bigint,
Email varchar(255)
)
---------------------------------UC3---------------------------------------------
insert into AddressBook values('Ram','Kumar','Kodambakkam','Chennai','TamilNadu',600021,8965231245,'ram@gmail.com')
select *from AddressBook
----------------------------------UC4-------------------------------------------------------------
update AddressBook set PhoneNumber=8940652581,ZipCode=602001 where First_Name='Ram'
------------------------------------UC5---------------------------------------------------------------------
delete from AddressBook where First_Name='Ram'
--------------------------------------Adding Person Contacts--------------------------------------------------
insert into AddressBook values('Ram','Kumar','Kodambakkam','Chennai','TamilNadu',600021,8965231245,'ram@gmail.com'),
('Raja','Sekar','Kodambakkam','Chennai','TamilNadu',600052,6325147852,'Raja@gmail.com'),
('Lisa','Dhilp','AdathamBakkam','Chennai','TamilNadu',600251,6251423547,'Lisa@gmail.com'),
('Rajan','TS','Kolathur','Chennai','TamilNadu',600325,9632547842,'Rajan@gmail.com'),
('Senthil','Kumar','RedHills','Chennai','TamilNadu',600012,6325142587,'Senthil@gmail.com'),
('Murgan','VS','Tambaram','Chennai','TamilNadu',600514,8652478952,'Murugan@gmail.com');
-------------------------------------------UC6----------------------------------------------------
select * from AddressBook where City='Chennai' or State='TamilNadu';
--------------------------------------------UC7------------------------------------------------
SELECT City, State, COUNT(*) AS AddressBookSize
FROM AddressBook
GROUP BY City, State;
-------------------------------------------UC8--------------------------------------------------
SELECT *
FROM AddressBook
WHERE City = 'Chennai'
ORDER BY First_Name ASC;
-----------------------------------------UC9-----------------------------------------------------
alter table AddressBook
Add
Name varchar(255),
Type varchar(255)
-------------------------------------------Update Query----------------------------------
Update AddressBook set Type='Friend' where Address='AdathamBakkam';
Update AddressBook set Type='Family' where Address='Kolathur'or Address='RedHills' or Address='Tambaram'
select *from AddressBook
----------------------------------------UC10------------------------------------------------------
SELECT Type, COUNT(*) AS NumberOfContacts
FROM AddressBook
GROUP BY Type;
--------------------------------UC11-----------------------------------------------------------
-- Inserting the person as a friend
INSERT INTO AddressBook (Name, Type)
VALUES ('Vel', 'Friend');

-- Inserting the person as a family member
INSERT INTO AddressBook (Name, Type)
VALUES ('Vel', 'Family');
------------------------------------------UC12




