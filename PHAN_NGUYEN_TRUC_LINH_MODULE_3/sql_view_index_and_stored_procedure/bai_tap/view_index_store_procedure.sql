create database demo;
use demo;

create table Products(
id int primary key,
productCode int,
productName varchar(50),
productPrice double,
productAmount int,
productDescription varchar(50),
productStatus  varchar(50)
);

select * from products;
CREATE UNIQUE INDEX  productCode_fk
ON products (productCode);

CREATE UNIQUE INDEX  productCode_fk
ON products (productName , productPrice);

create view san_pham as
select productCode, productName, productPrice, product