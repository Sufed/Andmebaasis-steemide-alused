CREATE DATABASE MihhalenkovProcedure;
USE MihhalenkovProcedure;

CREATE TABLE film(
filmId int PRIMARY KEY identity(1,1),
filmNimetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int)
--mackaroo.com
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Alice''s Restaurant', 108, 'Noelyn Evreux', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Mr. Magorium''s Wonder Emporium', 213, 'Moina Hallgarth', 1992);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Less Than Zero', 100, 'Herta Howis', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Bereavement', 212, 'Janel Lightowlers', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Bubble, The (Ha-Buah)', 184, 'Willyt Pettko', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('What''s Up, Tiger Lily?', 169, 'Oneida Lelievre', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Everlasting Piece, An', 237, 'Barn Fergie', 1996);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Buried', 265, 'Daveta Meltetal', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('American Mary', 188, 'Gusti Ziemens', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Snug as a Bug (U Pana Boga za piecem)', 241, 'Fletcher Bill', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Vigilante', 149, 'Davine Scaplehorn', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Osmosis (Osmose)', 183, 'Alf Luggar', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Eversmile, New Jersey', 192, 'Sonnie Spencley', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Donovan''s Reef', 188, 'Cloe Eldrett', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Ride the Pink Horse', 163, 'Hilarius Leadstone', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Phantom of Liberty, The (Fant?me de la liberté, Le)', 268, 'Coriss Pearne', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('West Beirut (West Beyrouth)', 282, 'Elton Attoc', 1989);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Chopping Mall (a.k.a. Killbots)', 171, 'Martelle Slemming', 1999);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Nightmares in Red White & Blue: The Evolution of the American Horror Film', 182, 'Abbye Sarfati', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Bluebeard (Landru)', 103, 'Warren Klimkiewich', 1986);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Rapture (Arrebato)', 144, 'Agata Balcers', 1999);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Fairly Odd Christmas, A', 188, 'Salvidor Bertin', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Cameraman, The', 202, 'Sib Olek', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('From Dusk Till Dawn', 182, 'Chaunce Maes', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Canal, The', 142, 'Asher Stuckford', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Water Drops on Burning Rocks', 143, 'Rozalie Tarr', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('To Encourage the Others', 109, 'Ely Ricketts', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Stray Cat Rock: Delinquent Girl Boss (Nora-neko rokku: Onna banch?)', 244, 'Kara Leneham', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Slaves to the Underground', 128, 'Emma Hoggan', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Planet of the Apes', 263, 'Pete Kennally', 2011);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Shoot on Sight', 207, 'Trevar Van Der Hoog', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Othello', 237, 'Orelie Norkutt', 1986);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Shorts', 288, 'Janifer Derell', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Not Here to Be Loved (Je ne suis pas l? pour ?tre aimé)', 119, 'Jolie Aspray', 2001);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Farmer''s Daughter, The', 181, 'Abbey Laity', 1994);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Wizard of Baghdad, The', 168, 'Allyn Meert', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Fred & Vinnie', 170, 'Daune Cornthwaite', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Alexander''s Ragtime Band', 192, 'Madelena Attrey', 1999);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('$5 a Day', 271, 'Casey Muckeen', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('We and the I, The', 146, 'Rivkah O''Donohue', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Protocol', 285, 'Ian Winear', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Children of the Corn II: The Final Sacrifice', 160, 'Newton Draijer', 1996);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Workingman''s Death', 142, 'Kellen Lindborg', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Edge of Madness', 210, 'Glenna Kareman', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Catechism Cataclysm, The', 143, 'Izak Avarne', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Mentor', 131, 'Ragnar Heinecke', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Fantomas vs. Scotland Yard', 131, 'Corliss Griffey', 2010);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Thing: Terror Takes Shape, The', 161, 'Chicky Tenaunt', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('National Lampoon''s Vacation', 160, 'Earvin Paschke', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Stealth', 134, 'Gustavus Dumbar', 2003);

SELECT * FROM film
--filmiNimetus otsing esimese tähe järgi
CREATE Procedure otsing1Taht
@taht char(1)
AS
Begin
	SELECT * FROM film
	WHERE filmNimetus LIKE CONCAT(@taht,'%');
End;
--käivitamine
EXEC otsing1Taht 'A';

--protseduur mis kustutab sissestatus id järgi
CREATE Procedure kustutaFilm
@id int
AS
BEGIN
	SELECT * FROM film;
	DELETE FROM film WHERE filmId=@id;
	SELECT * FROM film;
END;
--käivitamine
EXEC kustutaFilm 2;

--proceduur, mis loeb filmide arv kokku
CREATE Procedure filmidArv
AS
SELECT COUNT(*) AS 'filmide Arv' FROM film;

EXEC filmidArv;

--proceduur mis täidab tabeli film
CREATE Procedure lisaFilm
@uusfilm varchar(50),
@kestvus int,
@rezisoor varchar(50),
@aasta int
AS
BEGIN
	insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values (@uusfilm, @kestvus, @rezisoor, @aasta);
	SELECT * FROM film;
END;

EXEC lisaFilm 'Test', 222, 'Test', 2000;

--proceduur, mis uuendab rezisööri andmed filmiNimi järgi
CREATE Procedure uuendaRezisorFilmis
@uusrezisoor varchar(50),
@filmNimetus varchar(50)
AS
BEGIN
	SELECT * FROM film WHERE filmNimetus=@filmNimetus;
	UPDATE film SET rezisoor=@uusrezisoor
	WHERE filmNimetus=@filmNimetus;
	SELECT * FROM film WHERE filmNimetus=@filmNimetus;
END;

EXEC uuendaRezisorFilmis 'Jeff Besos', 'Test';


insert into iphone1 (muudel, v_aasta, värv, mälu) values ('XS', 2010, 'Red', 70);
insert into iphone1 (muudel, v_aasta, värv, mälu) values ('X', 2002, 'Purple', 48);
insert into iphone1 (muudel, v_aasta, värv, mälu) values ('11', 2012, 'Orange', 92);
insert into iphone1 (muudel, v_aasta, värv, mälu) values ('11X', 2007, 'Maroon', 27);
insert into iphone1 (muudel, v_aasta, värv, mälu) values ('11XS', 2011, 'Red', 97);
insert into iphone1 (muudel, v_aasta, värv, mälu) values ('12', 2013, 'Red', 92);
insert into iphone1 (muudel, v_aasta, värv, mälu) values ('12X', 2008, 'Goldenrod', 4);
insert into iphone1 (muudel, v_aasta, värv, mälu) values ('12XS', 2006, 'Mauv', 55);
insert into iphone1 (muudel, v_aasta, värv, mälu) values ('13', 2010, 'Indigo', 42);
insert into iphone1 (muudel, v_aasta, värv, mälu) values ('13X', 1968, 'Fuscia', 82);





-----Loodamine
CREATE TABLE iphone1(
iphoneId int PRIMARY KEY identity(1,1),
muudel varchar(50),
v_aasta int,
värv varchar(50),
mälu int)

SELECT * FROM iphone1

----Looodamine värskenda värvi
CREATE Procedure uuevarviphone2
@uusvarv varchar(50),
@muudel varchar(50)
AS
BEGIN
	SELECT * FROM iphone1 WHERE muudel=@muudel;
	UPDATE iphone1 SET värv=@uusvarv
	WHERE muudel=@muudel;
	SELECT * FROM iphone1 WHERE muudel=@muudel;;
END;

EXEC uuevarviphone2 'Kollane', 'X';

----otsing esimese tähe järgi
CREATE Procedure otsing1täheiphone1
@muudel varchar(50)
AS
BEGIN
	SELECT * FROM iphone1
	WHERE muudel LIKE CONCAT(@muudel,'%');
END;

--käivitamine
EXEC otsing1täheiphone1 '13';

-----


--kustutab sissetatud mudel järgi
CREATE Procedure kustutaVarv111
@varv varchar(50)
AS
BEGIN
	SELECT * FROM iphone1;
	DELETE FROM iphone1 WHERE värv=@varv;
	SELECT * FROM iphone1;
END;

EXEC kustutaVarv111 Red;
