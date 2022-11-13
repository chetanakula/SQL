Create table Customer
(
  id int primary key,
  FirstName nvarchar(40) not null,
  LastName nvarchar(40),
  City nvarchar(40),
  Country nvarchar(40),
  Phone nvarchar(20),
  )
  insert into Customer values(1,'akula','chetan','palakollu','India',9087654132)
  insert into Customer values(2,'medicherla','ani','congo','Germany',9870645321)
  insert into Customer values(3,'rekapalli','karan','vijaynagar','Goa',6785432190)
  select *from Customer

   Create table Orde
   (
     id int primary key,
	 OrderDate nvarchar(13),
	 OrderNumber nvarchar(10),
	 Customerid int references Customer(id) ,
	 TotalNumber decimal(12,2)
	 )
	 insert into Orde values(653,2021-10-28,2,1,80.23)
	 insert into Orde values(897,2022-09-14,20,2,450.20)
	 insert into Orde values(903,2022-08-15,13,3,67.73)
	 select *from Orde

	 Create table Product
	 (
	   id int primary key,
	   ProductName nvarchar(50),
	   Unitprice decimal(12,2),
	   Package nvarchar(30),
	   )
	   insert into Product values(16,'Tea',8.24,'jersey')
	   insert into Product values(18,'Fruits',18.90,'Simla')
	   insert into Product values(14,'Rose',90.21,'flower')
	   select *from Product

	   Create table OrderItem
	   (
	     id int primary key,
		 OrderId int references Orde(id),
		 ProductId int references Product(id),
		 UnitPrice decimal(12,2),
		 Quantity int
		 )

		 insert into OrderItem values(101,653,16,23.78,30)
		 insert into OrderItem values(102,857,18,7.89,43)
		 insert into OrderItem values(103,903,14,75.23,22)
		 select *from OrderItem

		 select * from Customer

		 select * from Customer where Country like 'A%' or Country like 'I%'

		 select * from Customer where FirstName like '__i%'

		 select * from Customer where Country like 'Germany'

		 select FirstName +' '+LastName as Name from Customer
		  
		 select * from OrderItem;