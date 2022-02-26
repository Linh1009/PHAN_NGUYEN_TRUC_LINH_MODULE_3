use quanlikhachhang;

INSERT INTO `customer` (`cID`, `cName`, `cAge`) VALUES (1, 'Minh Quan', 10),(2, 'Ngoc Oanh', 20), (3, 'Hong Ha', 50);
INSERT INTO `orde` (`oID`, `cID`, `oDate`, `oTotalPrice`) VALUES (1, 1, '1997-01-03', NULL),(2, 2, '1999-01-03', NULL),(3, 1, '1992-01-03', NULL);
INSERT INTO `quanlikhachhang`.`product` (`pID`, `pName`, `pPrice`) VALUES (1, 'May Giat', 3),(2, 'Tu Lanh', 5),(3, 'Dieu Hoa', 7),(4, 'Quat', 1),(5, 'Bep Dien', 2);

INSERT INTO `quanlikhachhang`.`oderdetail` (`oID`, `pID`, `odQTY`) VALUES (1, 1, 3),(1, 3, 7),(1, 4, 2),(2, 1, 1),(3, 1, 8),(2, 5, 4),(2, 3, 3);

select oID, cID, oDate from orde;

select Customer.cName, product.pName from Customer join Product;

select Customer.cName, product.pName from Customer join Product where pName = null;

select orde.oDate, orde.oTotalPrice, oderdetail.oID  from orde join oderdetail on  oderdetail.oID = orde.oID;