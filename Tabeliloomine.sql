SQL SERVER MANAGEMENT STUUDIO
-----------------------------
--Создание базы данных. 09.04.24
CREATE DATABASE MihhalenkovLOGITpv22;
USE MihhalenkovLOGITpv22;

--Создание таблицы.
CREATE TABLE opilane(
id int Primary Key identity(1,1), --primary key - Первичный ключ который выдает уникальное число, и оно не повторяется
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date);
SELECT * FROM opilane;
--Добавляем информацию к таблице.
INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp)
VALUES(
'Artemi', 'Mihhalenkov', '12345678911', 'Tallinn', '2023-08-16');
SELECT * FROM opilane;

-----------------------------
--Создание таблицы.
CREATE TABLE Language
(
ID int NOT NULL PRIMARY KEY,
Code char(3) NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
-- True or False 1 or 0
Percentage decimal(5,2)
); 
SELECT * FROM Language;
--Добавляем информацию к таблице.
INSERT INTO Language(
ID, Code, Language, isOfficial, Percentage)
VALUES(
'1', 'GER', 'Vene', 1, 80.5);
SELECT * FROM Language;
--Изменение структуры таблицы.
ALTER TABLE Language ADD Capital varchar(20);
SELECT * FROM Language;
--Выведение колонны.
ALTER TABLE Language DROP COLUMN Capital;
SELECT * FROM Language;
--Добавляем информацию к таблице.
INSERT INTO Language(ID, Code, Language, isOfficial, Percentage, Capital)
VALUES('2', 'GER', 'Vene', 1, 80.5,'Helsinki');
SELECT * FROM Language;
--Обновление
UPDATE Language SET Capital ='Tallinn'
WHERE ID=1;
SELECT * FROM Language;


-----------------------------
--Создание группы таблиц. 10.04.24
CREATE TABLE ryhm(
ryhmId int Primary Key identity(1,1), -- identity определяет каждому свое число автоматически. --Primary Key даёт уникальный ключ
ryhmNimetus varchar(20) UNIQUE,
osakond char(3));
INSERT INTO ryhm(ryhmNimetus, osakond) -- INSERT INTO вставялет информацию в таблицу, в скобках перечисляем то, что выдается не автоматически.
VALUES ('TARpv22', 'IT');
SELECT * FROM ryhm; -- SELECT * FROM ... выводит информацию.
SELECT * FROM opilane;
--FOREIGN KEY связь между таблицами. PK teises tabelis
ALTER TABLE opilane ADD ryhmID int;
SELECT * FROM ryhm; -- SELECT * FROM ... выводит информацию.
SELECT * FROM opilane;
--Tabeli opilane uuendamine.
Update opilane SET ryhmID=1;
SELECT * FROM ryhm; -- SELECT * FROM ... выводит информацию.
SELECT * FROM opilane;
--FK lisamine opilane tabelisse.
ALTER TABLE opilane --ALTER TABLE не запускается отдельно.
ADD FOREIGN KEY (ryhmId) REFERENCES ryhm(ryhmId); --REFERENCES ...(...) мы выбираем на что он будет ссылаться, что там за информация будет.
SELECT * FROM ryhm; -- SELECT * FROM ... выводит информацию.
SELECT * FROM opilane;

INSERT INTO opilane(eesnimi, perenimi, isikukood, aadress, sisseastumis_kp, ryhmID)
VALUES('Artemi', 'Mihhalenkov', '12345678921', 'Tallinn', '2023-08-16', 4421);
SELECT * FROM opilane;


--Tabeli ruhnajuhataja loomine.
CREATE TABLE ruhmajuhataja(
ruhmajuhatajaId int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
telefon varchar(13) UNIQUE);

--Добавление столбика в таблицу, а именно ID.
INSERT INTO ruhmajuhataja(eesnimi, perenimi, telefon)
VALUES ('Jekaterina', 'Rätsep', '111111');
SELECT * FROM ruhmajuhataja;

ALTER TABLE ruhmad ADD juhatajaId int;
Update ruhmad SET juhatajaId=1;

ALTER TABLE ruhmad
ADD FOREIGN KEY (juhatajaId) REFERENCES ruhmajuhataja(juhatajaId);

INSERT into ruhmad(ruhmNimetus, osakond, juhatajaId);

----
CREATE TABLE hinnang(
hinnangId int Primary Key identity(1,1),
kuupaev date,
opilaneId int,
ruhmajuhatajaId int,
hinnang TEXT)
SELECT * FROM hinnang

INSERT INTO hinnang(kuupaev, hinnang, opilaneId, ruhmajuhatajaId)
VALUES ('04.01.24', '5', 1, 1);
SELECT * FROM hinnang

ALTER TABLE hinnang ADD opilaneId int;
Update hinnang SET opilaneId=1;

ALTER TABLE hinnang
ADD FOREIGN KEY (juhatajaId) REFERENCES ruhmajuhatajad(juhatajaId);
SELECT * FROM hinnang

ALTER TABLE hinnang ADD juhatajaId int;
Update hinnang SET juhatajaId=1;

DELETE FROM hinnang

ALTER TABLE hinnang
ADD FOREIGN KEY (opilaneId) REFERENCES opilaned(opilaneId);
SELECT * FROM hinnang



ALTER TABLE hinnang
ADD FOREIGN KEY (ruhmajuhatajaId) REFERENCES ruhmajuhatajad(juhatajaId);
SELECT * FROM hinnang


CREATE TABLE opilaned(
opilaneId int Primary Key identity(1,1),
opilaneNimi varchar(10))
SELECT * FROM opilaned

INSERT INTO opilaned(opilaneNimi)
VALUES ('Artemi');
SELECT * FROM opilaned;


CREATE TABLE ruhmajuhatajad(
juhatajaId int Primary Key identity(1,1),
juhatajaNimi varchar(10))
SELECT * FROM ruhmajuhatajad

INSERT INTO ruhmajuhatajad(juhatajaNimi)
VALUES ('Jekaterina');
SELECT * FROM ruhmajuhatajad;
