--create table test (
--	[name] nvarchar(100),
--	age int,
--	rost float,
--	gender bit, -- 1 ili 0
--	bdate datetime -- yyyy-mm-dd
--)

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

create table book (
	id int identity,
	bookname nvarchar (350) not null,
	cost money,
	relasedate datetime, 	
	genre nvarchar (150) not null,
	author nvarchar (150) not null,
)

SELECT  *	
from book

--create table pop (
--	i int,
--	t time,
--	check ((i > 0 and i < 100) or t >  '14:00')
--)

--insert into pop
--values (200, '10:00')


insert into book (bookname, cost, relasedate, genre, author) values ('Night of the Comet', '$4981.50', '2023-10-24', 'Comedy|Horror|Sci-Fi', 'Betteann Hearson');
insert into book (bookname, cost, relasedate, genre, author) values ('Feuerzangenbowle, Die', '$1057.25', '2023-12-29', 'Comedy', 'Wernher Haskew');
insert into book (bookname, cost, relasedate, genre, author) values ('Apple, The (Sib)', '$8929.29', '2023-05-13', 'Drama', 'Genia Andreopolos');
insert into book (bookname, cost, relasedate, genre, author) values ('State of Siege (État de siège)', '$6546.82', '2023-09-04', 'Drama|Thriller', 'Paquito Middleton');
insert into book (bookname, cost, relasedate, genre, author) values ('All Good Things', '$5190.47', '2023-04-03', 'Drama|Mystery|Thriller', 'Gill Mocker');
insert into book (bookname, cost, relasedate, genre, author) values ('Must Love Dogs', '$4696.48', '2023-12-01', 'Comedy|Romance', 'Merrily Loadsman');
insert into book (bookname, cost, relasedate, genre, author) values ('Redemption: The Stan Tookie Williams Story', '$2836.58', '2023-06-07', 'Crime|Documentary|Drama', 'Diandra Broy');
insert into book (bookname, cost, relasedate, genre, author) values ('Girl on a Motorcycle, The', '$1214.16', '2024-02-07', 'Drama|Romance', 'Gal Carmel');
insert into book (bookname, cost, relasedate, genre, author) values ('Copper Mountain', '$6873.39', '2023-08-14', 'Comedy|Musical', 'Crin Record');
insert into book (bookname, cost, relasedate, genre, author) values ('Force 10 from Navarone', '$11367.17', '2023-03-24', 'Action|Drama|War', 'Cynthie Lewknor');
insert into book (bookname, cost, relasedate, genre, author) values ('Presumed Guilty (Presunto culpable)', '$6286.06', '2023-10-09', 'Crime|Documentary', 'Pier Castanone');
insert into book (bookname, cost, relasedate, genre, author) values ('Kiss Me Deadly', '$8688.89', '2024-01-17', 'Film-Noir', 'Berte Akess');
insert into book (bookname, cost, relasedate, genre, author) values ('Diaries Notes and Sketches (Walden)', '$3099.78', '2023-09-10', 'Documentary', 'Gardner Gohier');
insert into book (bookname, cost, relasedate, genre, author) values ('Lost Souls', '$3888.33', '2023-12-13', 'Drama|Horror|Thriller', 'Bryant Segrott');
insert into book (bookname, cost, relasedate, genre, author) values ('Little Birds', '$6541.00', '2024-01-26', 'Drama', 'Modesta Witherow');
insert into book (bookname, cost, relasedate, genre, author) values ('Drugstore Cowboy', '$10419.09', '2023-11-12', 'Crime|Drama', 'Toni Franchyonok');
insert into book (bookname, cost, relasedate, genre, author) values ('Hell and High Water', '$12799.22', '2023-08-01', 'Adventure|Drama|Thriller', 'Annabel Matschke');
insert into book (bookname, cost, relasedate, genre, author) values ('Blue Smoke', '$9924.69', '2023-08-20', 'Drama|Romance|Thriller', 'Mayer Broose');
insert into book (bookname, cost, relasedate, genre, author) values ('Buffalo Soldiers', '$756.41', '2023-06-08', 'Comedy|Crime|Drama|War', 'Jillian Stott');
insert into book (bookname, cost, relasedate, genre, author) values ('What Matters Most', '$10821.83', '2023-03-20', 'Drama', 'Findley Pitkethly');
insert into book (bookname, cost, relasedate, genre, author) values ('Manzanar Fishing Club, The', '$6260.21', '2024-01-27', 'Adventure|Documentary', 'Rubetta Wayman');
insert into book (bookname, cost, relasedate, genre, author) values ('Empty Mirror, The', '$10311.08', '2023-08-29', 'Drama', 'Horst Marder');
insert into book (bookname, cost, relasedate, genre, author) values ('Sky Fighters (Les Chevaliers Du Ciel)', '$1374.84', '2023-11-11', 'Action|Adventure', 'Sutherlan Spohrmann');
insert into book (bookname, cost, relasedate, genre, author) values ('My Own Private Idaho', '$2762.35', '2023-11-28', 'Drama|Romance', 'Arny O''Kerin');
insert into book (bookname, cost, relasedate, genre, author) values ('Speedway', '$8546.19', '2023-06-10', 'Drama|Romance', 'Bernetta Hendrick');
insert into book (bookname, cost, relasedate, genre, author) values ('Black Sun (Kuroi taiyô)', '$6454.95', '2023-09-25', 'Drama|Thriller', 'Nefen Lambin');
insert into book (bookname, cost, relasedate, genre, author) values ('Heroic Ones, The (Shi san tai bao)', '$7686.62', '2024-01-16', 'Action|Drama', 'Clement Prettyjohn');
insert into book (bookname, cost, relasedate, genre, author) values ('The Last Outpost', '$10198.92', '2023-11-23', 'Western', 'Dorelle Conklin');
insert into book (bookname, cost, relasedate, genre, author) values ('Walking with Monsters', '$1485.96', '2023-11-20', 'Documentary', 'Jesselyn Accombe');
insert into book (bookname, cost, relasedate, genre, author) values ('24 7: Twenty Four Seven', '$4473.75', '2023-10-19', 'Comedy|Drama', 'Nickie Minors');
insert into book (bookname, cost, relasedate, genre, author) values ('Goodbye Bafana (Color of Freedom, The)', '$6600.76', '2023-11-21', 'Drama|War', 'Renaud McGenn');
insert into book (bookname, cost, relasedate, genre, author) values ('The Big Bus', '$2714.76', '2024-01-10', 'Action|Comedy', 'Kelsy Peasgood');
insert into book (bookname, cost, relasedate, genre, author) values ('Piggy', '$771.33', '2023-03-14', 'Thriller', 'Ashley Rapelli');
insert into book (bookname, cost, relasedate, genre, author) values ('College', '$12778.41', '2023-08-06', 'Comedy', 'Jenelle Greenhalf');
insert into book (bookname, cost, relasedate, genre, author) values ('Homem Que Desafiou o Diabo, O', '$8959.14', '2023-04-16', 'Comedy', 'Bibby Varnes');
insert into book (bookname, cost, relasedate, genre, author) values ('Chandni Chowk to China', '$6522.82', '2023-03-14', 'Action|Comedy', 'Lyell Huster');
insert into book (bookname, cost, relasedate, genre, author) values ('Life', '$2108.34', '2023-05-04', 'Comedy|Crime|Drama', 'Mahmud Cluff');
insert into book (bookname, cost, relasedate, genre, author) values ('Gumshoe', '$1618.00', '2023-06-29', 'Comedy|Crime|Drama|Mystery', 'Ted Alyukin');
insert into book (bookname, cost, relasedate, genre, author) values ('Day After, The', '$10648.11', '2023-06-25', 'Drama|Sci-Fi', 'Hurleigh Faire');
insert into book (bookname, cost, relasedate, genre, author) values ('American Drug War: The Last White Hope', '$1424.15', '2023-05-07', 'Crime|Documentary', 'Lorilyn Mazzey');
insert into book (bookname, cost, relasedate, genre, author) values ('Jesse Stone: Benefit of the Doubt', '$9900.08', '2023-04-21', 'Crime|Drama', 'Xylina Pinnere');
insert into book (bookname, cost, relasedate, genre, author) values ('About Schmidt', '$7469.74', '2023-07-07', 'Comedy|Drama', 'Brose Roskilly');
insert into book (bookname, cost, relasedate, genre, author) values ('Play the Game', '$2497.04', '2023-04-11', 'Comedy|Romance', 'Culver Scrauniage');
insert into book (bookname, cost, relasedate, genre, author) values ('Waiting Room (Bekleme odasi)', '$4489.95', '2023-12-18', 'Drama', 'Randie Summerscales');
insert into book (bookname, cost, relasedate, genre, author) values ('King of Ping Pong, The (Ping-pongkingen)', '$11085.71', '2023-04-02', 'Drama', 'Al Ick');
insert into book (bookname, cost, relasedate, genre, author) values ('Vagabond (Sans toit ni loi)', '$7900.48', '2023-07-23', 'Drama', 'Spike Eloy');
insert into book (bookname, cost, relasedate, genre, author) values ('Rat Race', '$8436.76', '2023-05-22', 'Comedy', 'Zondra Collinwood');
insert into book (bookname, cost, relasedate, genre, author) values ('Curse of Frankenstein, The', '$3662.55', '2023-09-25', 'Horror', 'Glendon Biddlecombe');
insert into book (bookname, cost, relasedate, genre, author) values ('Skinwalkers', '$10247.48', '2023-08-09', 'Horror|Thriller', 'Rozina Sunners');
insert into book (bookname, cost, relasedate, genre, author) values ('Welcome to the South (Benvenuti al Sud)', '$7876.33', '2023-06-11', 'Comedy', 'Torry Dametti');


