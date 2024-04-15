SQL SERVER MANAGEMENT STUUDIO


--ab loomine
CREATE DATABASE OdinokovLOGITpv22;
Use OdinokovLOGITpv22;
--tabeli loomine
Create table opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aaddress TEXT,
sisseastumis_kp date 
);
-- primary key -primaarne võti mis annab unukaalssus
--identity(1,1) -määrab igaühele oma numbri
--kuva kõik mis on tabelis
SELECT * FROM opilane;
--andmete lisamine 
INSERT INTO opilane(eesnimi, perenimi, isikukood, aaddress, sisseastumis_kp)
VALUES('Kari', 'Fudova', '60604120291', 'Tallinn', '2022-08-28');
SELECT * FROM opilane;
---------------------------------------
--talinne rühm loogimine
Create table rühm(
rühmid int Primary Key identity(1,1),
rühmnimetus varchar(20) UNIQUE,
osakond char (3));
SELECT * FROM rühm;
INSERT INTO rühm(rühmnimetus, osakond)
VALUES ('LOGITpv21', 'IT');

SELECT * FROM rühm;
SELECT * FROM opilane;
--FOREIGN KEY-->PK teises tabelis
ALTER TABLE opilane ADD rühmid int;
--tabeli opilane uuendamine
Update opilane SET rühmid=2;
--FK lisamine opilane tabelisse
ALTER TABLE opilane 
ADD FOREIGN KEY (rühmid) REFERENCES rühm(rühmid);



Create table rühmajuhataja(
rühmajuhataja int Primary Key identity(1,1),
eesnimi  char (10) UNIQUE,
perenimi  char (10) UNIQUE,
telefon varchar(15));
SELECT * FROM  rühmajuhataja;
INSERT INTO rühmajuhataja(eesnimi, perenimi, telefon)
VALUES ('Anna', 'Kular', '+3725554514');
SELECT * FROM rühmajuhataja;
SELECT * FROM rühm;
SELECT * FROM opilane;
--veergu lisamine tabelisse
ALTER TABLE rühm ADD rühmajuhataja int;
--tabeli opilane uuendamine
Update rühm SET rühmajuhataja=1;
--FK lisamine opilane tabelisse
ALTER TABLE rühm 
ADD FOREIGN KEY (rühmajuhataja) REFERENCES rühmajuhataja(rühmajuhataja);

--удаление таблицы название таблицы
drop table .....;
--удаление столбца из таблицы сначала навание таблицы а потом нахврние столбца
alter table .... drop column ....;
Create table hinnang(
hinnangid int Primary Key identity(1,1),
kuupaev  date,
opilaneid  int,
rühmajuhataja int,
hinnang  text);
SELECT * FROM hinnang;
SELECT * FROM rühmajuhataja;
SELECT * FROM rühm;
SELECT * FROM opilane;
INSERT INTO hinnang(kuupaev, opilaneid,rühmajuhataja, hinnang)
VALUES ('12.09.2024','1', '1','vaga hasti');




CREATE TABLE opilaned(
opilaneId int Primary Key identity(1,1),
opilaneNimi varchar(10))
SELECT * FROM opilaned

INSERT INTO opilaned(opilaneNimi)
VALUES ('Artemi');
SELECT * FROM opilaned;
