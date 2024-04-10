Команды чтобы все скачать с github
C:\Users\opilane>git config --global user.name "Artemi Mihhalenkov"
C:\Users\opilane>git config --global user.email "artemi.mihhalenkov@gmail.com"
C:\Users\opilane>git config --global --list
user.name=Artemi Mihhalenkov
user.email=artemi.mihhalenkov@gmail.com
C:\Users\opilane>cd Desktop
C:\Users\opilane\Desktop>git clone https://github.com/Sufed/Andmebaasis-steemide-alused.git
Cloning into 'Andmebaasis-steemide-alused'...
remote: Enumerating objects: 19, done.
remote: Counting objects: 100% (19/19), done.
remote: Compressing objects: 100% (16/16), done.
remote: Total 19 (delta 5), reused 11 (delta 2), pack-reused 0
Receiving objects: 100% (19/19), 4.37 KiB | 4.37 MiB/s, done.
Resolving deltas: 100% (5/5), done.


SQL SERVER MANAGEMENT STUUDIO

--AB loomine
CREATE DATABASE MihhalenkovLOGITpv22;

USE MihhalenkovLOGITpv22;
--tabeli loomine
CREATE TABLE opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date
);
--primary key - Первичный ключ который выдает уникальное число, и оно не повторяется 
--identity - Определяет каждому свое число

--select - выводит или отоброжает что есть в таблице
SELECT * FROM opilane;
--andmete lisamine
INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp)
VALUES(
'Artemi', 'Mihhalenkov', '12345678911', 'Tallinn', '2023-08-16');
SELECT * FROM opilane;



------------
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

-- andmete lisamine
INSERT INTO Language(
ID, Code, Language, isOfficial, Percentage)
VALUES(
'1', 'GER', 'Vene', 1, 80.5);
SELECT * FROM Language;

-- Tabeli struktuuri muutmine 
ALTER TABLE Language ADD Capital varchar(20);
SELECT * FROM Language;
-- Veergu kutsutamine
ALTER TABLE Language DROP COLUMN Capital;
SELECT * FROM Language;
-- 
INSERT INTO Language(ID, Code, Language, isOfficial, Percentage, Capital)
VALUES('2', 'GER', 'Vene', 1, 80.5,'Helsinki');
SELECT * FROM Language;
--uuendamine
UPDATE Language SET Capital ='Tallinn'
WHERE ID=1;
SELECT * FROM Language;
