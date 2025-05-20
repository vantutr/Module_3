create database QuanLyBanHang;

use QuanLyBanHang;

create table Customer(
                         cID int primary key auto_increment,
                         cName varchar(100) not null,
                         cAge int
);

create table Order1(
                       oID int primary key auto_increment,
                       cID int,
                       oDate date,
                       oTatalPrice int,
                       foreign key (cID) references Customer(cID)
);

create table OrderDatail(
                            oID int,
                            pID int,
                            odQTY int,
                            primary key (oID, pID),
                            foreign key (oID) references Order1(oID),
                            foreign key (pID) references Product(pID)
);

create table Product(
                        pID int primary key auto_increment,
                        pName varchar(100),
                        pPrice int
);



