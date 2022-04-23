create database if not exists quanlibanhang1;
use quanlibanhang1;
create table customer(
cId int primary key,
cName varchar(50),
cAge int
);
create table `order` (
oID int primary key,
cID int,
oDate date,
oTotalPrice int,
foreign key (cID) references customer(cID)

);
create table product(
pID int primary key,
pName varchar(50),
pPrice double
);
create table OrderDetail(
oID int,
pID int,
odQTY int,
primary key (oID,pID),
foreign key (oID) references `order`(oID),
foreign key (pID) references product(pID)
);


 