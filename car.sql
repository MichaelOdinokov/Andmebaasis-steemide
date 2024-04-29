create table car(
carId int primary key AUTO_INCREMENT,
carMark varchar(50),
carVarv varchar (50),
car_aasta int);
select *from car

insert into car (carMark, carVarv, car_aasta) values ('Kia', 'Munchies Honey Sweet Trail Mix', 2008);
insert into car (carMark, carVarv, car_aasta) values ('Infiniti', 'Pepper - Scotch Bonnet', 2002);
insert into car (carMark, carVarv, car_aasta) values ('Ford', 'Bread - Roll, Italian', 2003);
insert into car (carMark, carVarv, car_aasta) values ('Mercury', 'Squid - Breaded', 1986);
insert into car (carMark, carVarv, car_aasta) values ('Chevrolet', 'Gatorade - Lemon Lime', 1996);
insert into car (carMark, carVarv, car_aasta) values ('Toyota', 'Juice - Orange, Concentrate', 2009);
insert into car (carMark, carVarv, car_aasta) values ('Buick', 'Bread - Multigrain', 1993);
insert into car (carMark, carVarv, car_aasta) values ('Toyota', 'Wine - Sauvignon Blanc Oyster', 2001);
insert into car (carMark, carVarv, car_aasta) values ('Chevrolet', 'Cheese - Cheddarsliced', 2010);
insert into car (carMark, carVarv, car_aasta) values ('Porsche', 'Beef - Salted', 1991);
insert into car (carMark, carVarv, car_aasta) values ('Lexus', 'Coffee Guatemala Dark', 2004);
insert into car (carMark, carVarv, car_aasta) values ('Lincoln', 'Ocean Spray - Kiwi Strawberry', 2003);

--otsin ,et  mis auto mark
Begin
	Select * from car
	where carMark like CONCAT(@car1, '%');

END;

--otsin, mis värv
Begin
	Select * from car
	where carVarv like CONCAT(@varv1, '%');
	select * from car;

END;

--otsin, mis aasta auto
Begin
	Select * from car
	where car_aasta like CONCAT(@aasta, '%');

END;

