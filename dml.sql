desc customer;
-- insert all columns
insert into customer values(12314,'chintu','324242222','chintu@gmail.com','Chennai');

-- insert only few columns
insert into customer(customerid,customername,customeremail) 
values(12315,'pintu','pintu@gmail.com');

select * from customer;