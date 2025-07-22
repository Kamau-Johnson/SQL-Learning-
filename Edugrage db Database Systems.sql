show databases;
create schema edugradedb;
use edugradedb;
show tables;
create table students
(
studID int primary key not null,
studname varchar(255) not null,
Gender varchar (8) not null,
dob date not null,
class text not null
);

describe students;

alter table students drop Gender;
alter table students add Gender varchar (8) not null after studname;

describe students;

create table teachers
(
teachID int primary key not null,
teachname varchar (255) not null,
Gender varchar (8) not null,
dob date not null,
classs text not null,
email varchar (50) not null,
phonenumber int not null
);

describe teachers;

create table classes 
(
classID int not null,
classname varchar(10) not null,
teachID int not null,
foreign key (teachID) references teachers(teachID)
);

describe classes;

create table subjects
(
subcode int primary key not null,
subname varchar (50) not null,
teachname varchar (255) not null,
teachID int not null,
foreign key (teachID) references teachers(teachID)
);

describe subjects;

create table marks
(
markID int primary key not null,
marks int not null,
studID int not null,
ovrscore int not null,
meanscore int not null,
remark text not null,
foreign key (studID) references students(studID)

);

describe marks;






 

