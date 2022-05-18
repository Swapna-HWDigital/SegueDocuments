create database segue32batch;

use segue32batch;

create table customer(customerid int,customername varchar(30),customermobno varchar(13),
					  customeremail varchar(30));

describe customer;

alter table customer add primary key(customerid);
alter table customer add customeraddress varchar(30);
alter table  customer modify customeremail varchar(30) not null;

create table supplier(supplierid int primary key,suppliername varchar(30),suppliermobno varchar(13),
					  supplieremail varchar(30) not null);
                      
desc supplier;

create table product(productid int,productname varchar(30),
						productprice float default 5,
					  productcategory varchar(30) not null,
                      constraint pk_product primary key(productid) );
alter table product drop column productcategory;
desc product;
                      
alter table product drop primary key;

# to define default and primary key using constraint keyword
create table product1(productid int,productname varchar(30),
						productprice float default 5,
					  productcategory varchar(30) ,
                      constraint pk_product primary key(productid,productcategory) );
desc product1;

-- to view all databases
show databases;

create database dummy;

drop database dummy;

show tables;

drop table product1;
