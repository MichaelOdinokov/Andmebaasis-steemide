SQL SERVER MANAGEMENT STUUDIO

--ab loomine
CREATE DATABASE OdinokovLOGITpv22;
USE OdinokovLOGITpv22;
--tabel loomine
CREATE TABLE opilane(
id int Primary Key identity(1,1), 
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
address TEXT,
sisseastumi_kp date
);

SELECT * FROM opilane;
--primary Key primaarne võti mis annab unikaalsus
--identity(1,1) määrab igaühel oma numbri
--andmete lisamine
INSERT INTO opilane(eesnimi, perenimi, isikukood, address, sisseastumi_kp)
VALUES('Mohabed', 'Alfa', '20505047015', 'Addis Abeba', '2023-08-09')
SELECT * FROM opilane;



CREATE TABLE Language
(
ID int NOT NULL PRIMARY KEY,
Code char(3) NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
Percentage decimal(5, 2)
Capital varchar(50) NOT NULL,

); 
SELECT * FROM Language;
INSERT INTO Language (ID, Code, Language, IsOfficial, Percentage, Capital)
VALUES(1, 'EST', 'Eesti', 1, 80.5);

--Tabli struktuuri muutmine
--ALTER TABLE Language ADD Capital varchar(20);
--Veergu kustutamine
ALTER TABLE Language DROP COLUMN Capital;

--


--uendamine 
--UPDATE Language SET Capital='Tallinn'
--Where ID=1