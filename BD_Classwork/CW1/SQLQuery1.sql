--create table test (
--	[name] nvarchar(100),
--	age int,
--	rost float,
--	gender bit, -- 1 ili 0
--	bdate datetime -- yyyy-mm-dd
--)
--выборка
--SELECT  *	
--from test

--insert into test
--values (N'Anel', 23, 162.5, 1, '2000-04-06')

--create table users (
--	id int identity,
--	fio nvarchar(150) not null,
--	phone nvarchar (15) unique,
--	age int default 18,
--)
--insert into users (fio, phone)
--values ('sadasldas', '9396723')


--insert into users (fio, phone, age)
--values (N'qwertyuio', '789456', 55),
--		(N'asdasdwq', '2937874', 45),
--		(N'fkghfkke', '52923', 75)

--create table book (
--	id int identity,
--	bookname nvarchar (350) not null,
--	cost float,
--	relasedate datetime, --yyyy-mm-dd
--	genre nvarchar (150) not null,
--	author nvarchar (150) not null,
--)
--insert into book (bookname, cost, relasedate, genre, author)
--values (N'Crime and Punishment', 22000, '1866-12-17', 'Roman', 'Fedor Dostoevsky'),
--		(N'Fifty Shades of Grey', 15500, '2011-06-20', 'action', 'Erica James')

--SELECT  *	
--from book

create table pop (
	i int,
	t time,
	check ((i > 0 and i < 100) or t >  '14:00')
)

insert into pop
values (200, '10:00')
