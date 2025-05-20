create database QuanLySinhVien;

use QuanLySinhVien;

CREATE TABLE Class(
                      ClassID int not null auto_increment,
                      ClassName varchar(60) not null,
                      StartDate datetime not null,
                      Status Bit,
                      Primary key (ClassID)
);

create table Student(
                        StudentID int not null auto_increment,
                        StudentName varchar(30) not null,
                        Address varchar(50),
                        Phone varchar(20),
                        Status Bit,
                        ClassID int not null,
                        Primary key (StudentID),
                        FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

create table Subject(
                        SubID int not null auto_increment primary key,
                        SubName varchar(30) not null,
                        Credit tinyint not null Default 1 check (Credit >= 1),
                        Status Bit Default 1
);

create table Mark(
                     MarkID int not null auto_increment primary key,
                     SubID int not null,
                     StudentID int not null,
                     Mark float default 0 check (Mark between 0 and 100),
                     ExamTimes Tinyint Default 1,
                     unique (SubID, StudentID),
                     foreign key (SubID) references Subject (SubID),
                     foreign key (StudentID) references Student (StudentID)
);

