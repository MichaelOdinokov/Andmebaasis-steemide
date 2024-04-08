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