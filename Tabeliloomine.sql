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

