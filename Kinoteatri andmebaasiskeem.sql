CREATE DATABASE KinoteatrMihhalenkov;
USE KinoteatrMihhalenkov;

---Loomine tabeli zanr 
CREATE TABLE zanr(
	zanrId int Primary Key identity(1,1),
	zanrNimi varchar(25),
	zanrKirjeldus TEXT)
SELECT * FROM zanr
---Loomine tabeli filmType
CREATE TABLE filmType(
	filmTypeId int Primary Key identity(1,1),
	filmType varchar(25),
	kirjeldus TEXT)

INSERT INTO filmType (filmType, kirjeldus)
VALUES ('3D', 'väga põnev 3D efekt')
SELECT * FROM filmType
---Loomine tabeli rezisor
CREATE TABLE rezisor(
	resizorId int Primary Key identity(1,1),
	eesnimi varchar(25),
	perenimi varchar(25))
SELECT * FROM filmType

