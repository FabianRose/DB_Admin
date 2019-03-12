/*
  Database Administration Project
  Tutor: Ray Williams
*/

-- Setup config for IDE
create user Database_administration_2019 identified by pass1234;

grant connect to Database_administration_2019;

grant create session to Database_administration_2019;

grant create table to Database_administration_2019 with admin option;

create tablespace data datafile '/Users/xxx/Documents/Oracle' size 500M; -- Datafile location is unique to machine

alter database default tablespace users;

alter user Database_administration_2019 quota unlimited on USERS;


-- Section A - Database Application Requirements

-- 1
create table Customer(
  ID_number number primary key not null ,
  FirstName varchar(50),
  LastName varchar(50),
  DOB date,
  Gender char(1)
);

create table CustomerMobile(
  MobileNumber number not null,
  ID_number number references Customer(ID_number)
);

create table MailType(
  TypeID number primary key not null ,
  Cost_per_pound number,
  Name varchar(100)
);

create table Mail(
  ID_number number references Customer(ID_number),
  SenderID number primary key not null,
  RecipientID number,
  DateReceived date,
  DateAssigned date,
  DateDelivered date,
  Weight number,
  MailType varchar(20),
  Status varchar(20),
  Cost number
);

create table Employee(
  TRN number(9) primary key not null,
  FirstName varchar(20),
  LastName varchar(20),
  DOB date,
  Gender char(1)
);








