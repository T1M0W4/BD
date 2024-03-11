--CREATE TABLE TEST (
-- ID INT IDENTITY,
-- [STR] NVARCHAR (100) DEFAULT 'QWER',
-- PHONE NVARCHAR (20) UNIQUE,
-- NUMBER INT,
-- FL FLOAT,
-- DT DATETIME,
-- BOOL BIT
--)

--INSERT INTO TEST
--VALUES ('ASDFG', '8585884', 45, 0.25, '2020-12-30', 0)

--SELECT*
--FROM TEST
--WHERE 
--WHERE [STR] LIKE '%y%'

--SELECT MAX ()
--FROM TEST

--CRUD - UDALENIE, SOZDANIE, OBNOVLENIE

--DELETE FROM TEST
--WHIRE ID = 5 

--UPDATE TEST
--SET [STR] = 'HELLO'
--WHERE NUMBER % 2 = 0

--CREATE TABLE AUTH (
-- ID INT IDENTITY PRIMARY KEY,
-- [LOGIN] NVARCHAR (100) UNIQUE,
-- [PASSWORD] NVARCHAR (100)
--)

--insert into auth
--values ('qwerty', 'asdfg'), ('ASASDA', 'ASDASD')
--select * from auth

--CREATE TABLE USERS (
-- ID INT IDENTITY PRIMARY KEY,
-- FIO NVARCHAR (500) NOT NULL,
-- [ADDRES] NVARCHAR(100) NULL,
-- AUTH_ID INT FOREIGN KEY REFERENCES AUTH(ID)
--)

--insert into users
--values ('abc', 'abay', 1), ('qwe', 'z', 2)
--select * from users

--select users.fio, auth.loginn, auth.pass
--from users join auth
--on users.auth_id = auth.id

--create table category (
--	id int identity primary key,
--	name nvarchar(100) not null unique,
--	create_date datetime default  getdate()
--)

--insert into category (name)
--values ('frukti'), ('hlebnoe'), ('molochka')

--create table tovar (
--	id int identity primary key,
--	name nvarchar(100) not null,
--	category_id int foreign key references category(id)
--)

--insert into tovar
--values ('banan', 1), ('bulochka', 2), ('apple', 1),
--('tvorog', 3), ('milk', 3), ('protein', 3)

--select c.name, t.name
--from tovar as t join category as c
--on t.category_id = c.id

