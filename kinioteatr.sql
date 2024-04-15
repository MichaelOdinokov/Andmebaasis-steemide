	CREATE DATABASE kinoteatrOdinokov;
	Use kinoteatrOdinokov;

	--table Filmtype
	Create TABLE filmType(
	filmTypeID int Primary Key identity (1,1),
	filmType varchar(25),
	kirjeldus TEXT);

	Select * from filmType;
	Insert into filmTYPE (filmTYPE, kirjeldus)
	Values ('4D', 'väga põnev 4D, kasuta prillid');

	-- table Rezisor --edit..
	create table Rezisor(
	rezisorID int Primary Key identity (1,1),
	eesnimi varchar(25),
	perenimi varchar(25));

	Select * from Rezisor;
	Insert into Rezisor (rezisorID, eesnimi, perenimi)
	Values ('1', 'Mike', 'Jackson');


	--table film
	Create TABLE film(
	filmID int Primary Key identity (1,1),
	filmNimetus varchar(25),
	zanrID int,
	pikkus int,
	rezisorID int,
	filmTypeID int,
	reklaam image);
	Select * from film;
	






	--table zanr
	Create TABLE zanr(
	zanrId int Primary Key identity (1,1),
	zanrnimi varchar(25),
	zanrkirjeldus TEXT);

	select * from zanr;

	--table piletiMyyk
	Create TABLE piletiMyyk(
	piletiMyykId int Primary Key identity (1,1),
	kogus int,
	kinoKavaId int,
	);

	select * from piletiMyyk

	--tabel kinokava
	Create TABLE kinokava(
	kinokavaId int Primary Key identity (1,1),
	kuupaev DATETIME,
	filmNimetus int
	piletihind int,
	);
	
	select * from kinokava
	
	



	--FKs
	--FK: film->filmType done

	Select * from film;
	Select * from filmType;
	Alter table film add foreign key (filmTypeId) references filmType(filmTypeID);

	--FK: piletiMyyk-->kinokavaId done 
	Alter table piletiMyyk add foreign key (kinokavaId) references kinokava(kinokavaId);
	Select * from piletiMyyk;
	Select * from kinokava;
	
	

	--FK: rezisor-->film done
	Alter table film  add foreign key (rezisorID) references Rezisor(rezisorID);
	select * from Rezisor;
	select * from film;

	--FK: zanr-->film done
	Alter table film add foreign key (zanrId) references zanr(zanrId);
	select * from zanr;
	select * from film;

	--FK:  kinokava-->film --
	Alter table kinokava add foreign key (filmNimetus) references film(filmNimetus);
	select * from kinokava;
	select * from film;


	

