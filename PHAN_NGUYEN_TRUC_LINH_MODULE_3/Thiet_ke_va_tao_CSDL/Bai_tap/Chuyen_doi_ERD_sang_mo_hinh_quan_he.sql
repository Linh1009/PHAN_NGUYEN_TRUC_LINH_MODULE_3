drop database if exists tessts;
create database tessts;
use tessts;  


drop table if exists `nhacc`;
create table `nhacc`  (
  `MaNCC` varchar(255) not null primary key ,
  `TenNCC` varchar(255),
  `DiaChi` varchar(255),
  `SDT` varchar(255)
);
drop table if exists `phieunhap`;
create table `phieunhap`  (
  `SoPN` varchar(255) not null primary key ,
  `NgayNhap` date
);
drop table if exists `phieuxuat`;
create table `phieuxuat`  (
  `SoPX` varchar(255) not null primary key ,
  `NgayXuat` date
);
drop table if exists `vattu`;
create table `vattu`  (
  `MaVTU` varchar(255) not null primary key ,
  `TenVTU` varchar(255)
);

drop table if exists `dondh`;
create table `dondh`  (
  `SoDH` varchar(255) not null primary key,
  `NgayDH` date,
  `MaNCC` varchar(255),
  constraint `maNCC_DonHang_FK` foreign key (`MaNCC`) references `nhacc` (`MaNCC`)
);

drop table if exists `chitietdatdonhang`;
create table `chitietdatdonhang`  (
  `MaVTU` varchar(255) NOT NULL,
  `SoDH` varchar(255) NOT NULL,
  primary key (`MaVTU`, `SoDH`),
  constraint `donhang_vattudonhang_fk` foreign key (`SoDH`) references `dondh` (`SoDH`),
  constraint `vattu_vattudonhang_fk` foreign key (`MaVTU`) references `vattu` (`MaVTU`)
);
drop table if exists `chitietphieunhap`;
create table `chitietphieunhap`  (
  `SoPN` varchar(255) NOT NULL,
  `MaVTU` varchar(255) NOT NULL,
  `DGNhap` int,
  `SLNhap` int,
  primary key (`SoPN`, `MaVTU`),
  constraint `vattu_chitietphieunhap_fk` foreign key (`MaVTU`) references `vattu` (`MaVTU`),
  constraint `phieunhap_chitietphieunhap_fk` foreign key (`SoPN`) references `phieunhap` (`SoPN`)
) ;
drop table if exists `chitietphieuxuat`;
create table `chitietphieuxuat`  (
  `SoPX` varchar(255) NOT NULL,
  `MaVTU` varchar(255) NOT NULL,
  `DGXuat` int,
  `SLXuat` int,
  primary key (`SoPX`, `MaVTU`),
  constraint `phieuxuat_chitietphieuxuat_fkid` foreign key (`SoPX`) references `phieuxuat` (`SoPX`),
  constraint `vattu_chitietphieuxuat_fkid` foreign key (`MaVTU`) references `vattu` (`MaVTU`)
)
