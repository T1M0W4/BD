          



create table Groups (
  	id int identity primary key,
	GroupName VARCHAR(50)
);               
               
          
insert into Groups (GroupName) values ('SEP-172.2');
insert into Groups (GroupName) values ('SAT-172.2');
insert into Groups (GroupName) values ('SEP-211.1');
insert into Groups (GroupName) values ('SEP-182.1');
insert into Groups (GroupName) values ('SAT-172.1');
insert into Groups (GroupName) values ('SEP-191.2');
insert into Groups (GroupName) values ('SAT-211.2');
insert into Groups (GroupName) values ('SEN-182.1');
insert into Groups (GroupName) values ('SAT-192.1');


         
create table Students (
  	id int identity primary key,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(50),
	BirthDate DATE,
  	GroupID int FOREIGN key references Groups(id),
	Grants int default 1500
);


  
insert into Students   values ('Ky', 'Coling', 'kcoling0@prnewswire.com', '2021-09-02 ', 9, 2000)
insert into Students   values ('Rodrigo', 'Chevolleau', 'rchevolleau1@patch.com', '2022-01-16 ', 1, 4000)
insert into Students   values ('Ethelyn', 'Merle', 'emerle2@macromedia.com', '2021-06-30 ', 3, 5000)
insert into Students   values ('Zacharias', 'Vobes', 'zvobes3@wufoo.com', '2021-11-12 ', 1, 2000)
insert into Students   values ('Johannes', 'Selway', 'jselway4@scientificamerican.com', '2021-11-01 ', 9, 5000)
insert into Students   values ('Franklin', 'Brisley', 'fbrisley5@home.pl', '2021-12-12 ', 2, 10000)
insert into Students   values ('Twyla', 'Hurworth', 'thurworth6@mashable.com', '2022-02-10 ', 4, 3000)
insert into Students   values ('Maryanna', 'Garstan', 'mgarstan7@census.gov', '2021-08-09 ', 2, 3000)
insert into Students   values ('Shandeigh', 'Volette', 'svolette8@fotki.com', '2021-12-31 ', 6, 1000)
insert into Students   values ('Phylis', 'Huston', 'phuston9@quantcast.com', '2021-05-07 ', 6, 2000)               
               
  


create table Achievements (
  	id int identity primary key,
  	Assesment int not null,
	StudentId INT FOREIGN key references Students(id)
);
insert into Achievements (Assesment, StudentId) values (2, 3);
insert into Achievements (Assesment, StudentId) values (7, 5);
insert into Achievements (Assesment, StudentId) values (6, 1);
insert into Achievements (Assesment, StudentId) values (11, 1);
insert into Achievements (Assesment, StudentId) values (6, 1);
insert into Achievements (Assesment, StudentId) values (1, 4);
insert into Achievements (Assesment, StudentId) values (3, 7);
insert into Achievements (Assesment, StudentId) values (4, 6);
insert into Achievements (Assesment, StudentId) values (1, 8);
insert into Achievements (Assesment, StudentId) values (12, 6);
               




create table Teachers (
  	id int identity primary key,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(50),
	BirthDate DATE
);


insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Matty', 'Justun', 'mjustun0@google.pl', '2022-03-26');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Dorrie', 'Bauer', 'dbauer1@diigo.com', '2021-08-24');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Guglielma', 'Rosencrantz', 'grosencrantz2@istockphoto.com', '2021-08-03');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Debby', 'Comello', 'dcomello3@indiatimes.com', '2022-02-26');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Jesselyn', 'Sail', 'jsail4@wikispaces.com', '2021-10-07');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Odie', 'Pavelka', 'opavelka5@ycombinator.com', '2021-10-11');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Jesselyn', 'Callear', 'jcallear6@phoca.cz', '2021-11-03');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Claudius', 'Oxe', 'coxe7@com.com', '2021-07-05');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Almire', 'Vanner', 'avanner8@columbia.edu', '2021-09-03');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Zondra', 'Beamson', 'zbeamson9@aboutads.info', '2021-10-24');


create proc taskExam as
select 'hello'

exec taskExam

create proc addTeacher
@fname nvarchar(100),
@lname nvarchar(100),
@bdate datetime,
@email nvarchar(100),
as
insert into Teachers
values (@fname, @lname, @email, @bdate)

declare @fn nvarchar(100), @ln nvarchar(100)
declare @bd datetime, @em nvarchar(100)
set @fn = 'first'
set @ln = 'last'
set @bd = '2020-02-02'
set @em = 'qwerty.@mail.ru'

exec addTeacher @fn, @ln, @bd, @em

exec addTeacher 'FF', 'LL', '2025-05-05', '1@mail.ru'

select * from Teachers


create proc checkTeacher 
@fname nvarchar(100),
@bdate datetime output
as
select @bdate = (select birthdate
				from Teachers
				where firstname like @fname)


declare @fn nvarchar(100)
declare @bd datetime
set @fn = 'first'

exec checkTeacher @fn, @bd output

select @bd

CREATE FUNCTION getTeacherEmail (@id INT)
RETURNS NVARCHAR(100)
AS
BEGIN
 DECLARE @RET NVARCHAR (100);
 SELECT @RET = (SELECT email FROM Teachers WHERE id = @id)
 IF (@RET IS NULL)
  SET @RET = 'NOT FIND TEACHER BY ID';
 RETURN @RET;
END

select dbo.getTeacherEmail(2)
select dbo.getTeacherEmail(2222)


CREATE FUNCTION getStudentByGroup(@id INT)
RETURNS TABLE
AS 
RETURN
(
 SELECT S.FIRSTNAME + S.LASTNAME AS 'FIO', G.GROUPNAME AS 'GNAME'
 FROM Students AS S JOIN Groups AS G
 ON S.GroupID = G.id
 WHERE G.id = @id
)

SELECT * FROM dbo.getStudentByGroup(2)
SELECT * FROM dbo.getStudentByGroup(2222)
select dateadd (month, 1, '2006-08-27')

declare @var nvarchar(5)
set @var = '15'
select ISNUMERIC(@var)

declare @var nvarchar(5)
set @var = 'df'
select ISNUMERIC(@var)

select DIFFERENCE('Green', 'White')
select REVERSE('sadsdadx')