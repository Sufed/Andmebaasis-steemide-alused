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
Insert Into linnad(linnanimi, rahvaarv)
Values ('Maardu', 12345);
Select * from linnad;
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
--kontroll
Insert Into linnad(linnanimi, rahvaarv)
Values ('Paide', 67890);
Select * from linnad;
Select * from logi;

--Delete Trigger - trigger, mis täidab logi tabeli, kui linn on kustatud tabelis.
Create trigger LinnaKustutamine
On linnad
For Delete
AS
BEGIN
	Insert Into logi(kasutaja, aeg, toiming, andmed)
	Select USER,
			GETDATE(),
			'Linn on kustutatud',
			deleted.linnanimi
	From deleted;
END
DROP TRIGGER LinnaUuendamine;
--kontroll
DELETE FROM linnad
WHERE linnID=1;
SELECT * FROM linnad
SELECT * FROM logi

Create trigger LinnaUuendamine
On linnad
For Update
AS
BEGIN
	Insert Into logi(kasutaja, aeg, toiming, andmed)
	Select USER,
			GETDATE(),
			'Linnaandmed on uunendatud',
			concat('vanad: ', deleted.linnanimi, ' uued: ', inserted.linnanimi)
	From deleted INNER JOIN inserted
	ON deleted.linnID=inserted.linnID;
END;

Update linnad Set linnanimi='Tallinn2'
WHERE linnID=3;
Select * from linnad;
Select * from logi;
