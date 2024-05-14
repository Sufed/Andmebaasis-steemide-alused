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
--Trigger -Insert- Trigger mis jälgib linnade sissestamine tabelis linnad.
Create trigger LinnaLisamine
On linnad
For Insert
AS
BEGIN
	Insert Into logi(kasutaja, aeg, toiming, andmed)
	Select USER,
			GETDATE(),
			'Linn on lisatud',
			inserted.linnanimi
	From inserted;
END
