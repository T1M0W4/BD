create table Groups (
	id int primary key identity not null,
	Name nvarchar (10) unique not null,
	Rating int not null check((Rating >= 0) and (Rating <= 5)),
	Year int not null check((Year >= 1) and (Year <= 5)),
)

insert into Groups (Name, Rating, Year)
values (N'RPO-232.1', 0, 2),
		 (N'RPO-321.5', 1, 5)

select  *
from Groups