CREATE DATABASE KinoteatrMihhalenkov;
USE KinoteatrMihhalenkov;

---Tabeli loomine zanr .
CREATE TABLE zanr(
	zanrId int Primary Key identity(1,1),
	zanrNimi varchar(25),
	zanrKirjeldus TEXT)

INSERT INTO zanr (zanrNimi, zanrKirjeldus)
VALUES ('kom��dia', 'naeruv��rne'), ('perekonna', 'v�ga ilus'), ('�udus', 'v�ga hirmutav'), ('Ilukirjandus', 'P�nev'), ('Cartoon', 'P�nev')
SELECT * FROM zanr
DELETE FROM zanr

---Tabeli loomine filmType.
CREATE TABLE filmType(
	filmTypeId int Primary Key identity(1,1),
	filmType varchar(25),
	kirjeldus TEXT)

INSERT INTO filmType (filmType, kirjeldus)
VALUES ('3D', 'v�ga p�nev 3D efekt'), ('2D', 'v�ga p�nev 2D efekt'), ('1D', 'v�ga p�nev 1D efekt'), ('4D', 'v�ga p�nev 4D efekt'), ('5D', 'v�ga p�nev 5D efekt')
SELECT * FROM filmType
DELETE FROM filmType

---Tabeli loomine rezisor.
CREATE TABLE rezisor(
	resizorId int Primary Key identity(1,1),
	eesnimi varchar(25),
	perenimi varchar(25))

INSERT INTO rezisor (eesnimi, perenimi)
VALUES ('Artemi', 'Mihhalenkov'), ('Nikita', 'Konjajev'), ('Georgi', 'Kadurin'), ('Stas', 'Tsugunov')
SELECT * FROM rezisor
DELETE FROM rezisor

---Tabeli loomine piletiMyyk.
CREATE TABLE piletiMyyk(
	piletiMyykId int Primary Key identity(1,1),
	kogus int,
	kinokavaId int)

INSERT INTO piletiMyyk (kogus)
VALUES ('2'), ('4'), ('6'), ('8'), ('10')
SELECT * FROM piletiMyyk
DELETE FROM piletiMyyk

---Tabeli loomine kinokava.
CREATE TABLE kinokava(
	kinokavaId int Primary Key identity(1,1),
	kuupaev DATETIME,
	filmNimetus int,
	piletihind int)

INSERT INTO kinokava (kuupaev, piletihind)
VALUES ('10.04.24', '12'), ('11.04.24', '11'), ('12.04.24', '12')
SELECT * FROM kinokava

DELETE FROM kinokava




---Tabeli loomine film.
CREATE TABLE film(
	filmId int Primary Key identity(1,1),
	filmNimetus varchar(25),
	zanrId int,
	pikkus int,
	rezisorId int,
	filmTypeId int,
	reklaam image)
SELECT * FROM film


INSERT INTO film (filmNimetus, pikkus, zanrId, rezisorId, filmTypeId)
VALUES ('HorrorDad', 12, 100, 2, 9)
SELECT * FROM film




Update film SET zanrId=1;
SELECT * FROM film
DELETE FROM film
INSERT 
---FK: film-->filmType
ALTER TABLE film ADD FOREIGN KEY (filmTypeId) REFERENCES filmType(filmTypeId);

---FK: film-->rezisorId
ALTER TABLE film ADD FOREIGN KEY (rezisorId) REFERENCES rezisor(resizorId);

---FK: film-->zanrId
ALTER TABLE film ADD FOREIGN KEY (zanrId) REFERENCES zanr(zanrId);


---FK: kinokava-->filmId
ALTER TABLE kinokava ADD FOREIGN KEY (filmNimetus) REFERENCES film(filmId);

---FK: piletiMyyk-->kinokavaId
ALTER TABLE piletiMyyk ADD FOREIGN KEY (kinokavaId) REFERENCES kinokava(kinokavaId);
