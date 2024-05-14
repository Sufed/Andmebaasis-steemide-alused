CREATE DATABASE Triggerid;
USE Triggerid;
--1.tabel - linnad ja tabel täidab sekretär.
--2.tabel - logi, mis näitab kuidas sekretär täidab 1.tabel.
--Tähtis! et logi täidab trigger!
Create table linnad(
linnID int PRIMARY KEY identity(1,1),
linnanimi varchar(15),
rahvaarv int);
Create table logi(
id int PRIMARY KEY identity(1,1),
aeg DATETIME,
toiming  varchar(100),
andmed TEXT,
kasutaja varchar(100));
