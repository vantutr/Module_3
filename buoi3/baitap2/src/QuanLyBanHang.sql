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

ALTER TABLE Order1 MODIFY COLUMN oDate DATETIME;

insert into Customer(cName, cAge) values ('Minh Quan', 10);
insert into Customer(cName, cAge) values ('Ngoc Oanh', 20);
insert into Customer(cName, cAge) values ('Hong Ha', 50);

insert into Order1(cID, oDate) values (1, '2006-03-21');
insert into Order1(cID, oDate) values (2, '2006-03-23');
insert into Order1(cID, oDate) values (1, '2006-03-16');

insert into Product(pName, pPrice) values ('May Giat', 3);
insert into Product(pName, pPrice) values ('Tu Lanh', 5);
insert into Product(pName, pPrice) values ('Dieu Hoa', 7);
insert into Product(pName, pPrice) values ('Quat', 1);
insert into Product(pName, pPrice) values ('Bep Dien', 2);

insert into OrderDatail(oID, pID, odQTY) values (1, 1, 3);
insert into OrderDatail(oID, pID, odQTY) values (1, 3, 7);
insert into OrderDatail(oID, pID, odQTY) values (1, 4, 2);
insert into OrderDatail(oID, pID, odQTY) values (2, 1, 1);
insert into OrderDatail(oID, pID, odQTY) values (3, 1, 8);
insert into OrderDatail(oID, pID, odQTY) values (2, 5, 4);
insert into OrderDatail(oID, pID, odQTY) values (2, 3, 3);

select oID, oDate, oTatalPrice from Order1;

select C.cID, C.cName, P.pName
from Customer C
         join Order1 O on O.cID = C.cID
         join OrderDatail OD on O.oID = OD.oID
         join Product P on OD.pID = P.pID;

select C.cID, C.cName
from Customer C
         left join Order1 O on C.cID = O.cID
where O.cID is null;

select O.oID, O.oDate, sum(P.pPrice * OD.odQTY) AS oTatalPrice
from Order1 O
         join OrderDatail OD on O.oID = OD.oID
         join Product P on OD.pID = P.pID
GROUP BY O.oID, O.oDate;