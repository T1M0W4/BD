create table person (
	id int identity primary key,
	fio nvarchar(100) not null unique
)

alter table person
add age int default 18

select max(age) as 'max', min(age) as 'min', avg(age), sum(age)
from person

update person
set age = 22
where id % 2 = 0

update person
set age = 2
where id % 2 = 1

create table animal (
	id int identity primary key,
	nick nvarchar(100) not null unique,
	personId int foreign key references person (id)
)

select count(*) as 'count', person.fio 
from animal join person
on animal.personId = person.id
group by person.fio



