drop database if exists quanlikhachhang;
create database quanlikhachhang;
use quanlikhachhang;

DROP TABLE IF EXISTS Customer;
create table Customer(
cID int not null primary key,
cName varchar(30) not null,
cAge int
);

DROP TABLE IF EXISTS Orde;
create table Orde(
oID int not null primary key ,
cID int not null,
oDate date,
oTotalPrice int,
FOREIGN KEY (cID) REFERENCES Customer (cID)
);

DROP TABLE IF EXISTS Product;
create table Product(
pID int not null primary key,
pName varchar(30) not null,
pPrice double not null
);

DROP TABLE IF EXISTS OderDetail;
create table OderDetail(
oID int not null,
pID int not null,
odQTY int not null,
FOREIGN KEY (oID) REFERENCES Orde (oID),
FOREIGN KEY (pID) REFERENCES Product (pID)
);

