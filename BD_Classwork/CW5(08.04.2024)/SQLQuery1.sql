create table customer(
	id int identity primary key,
	fio nvarchar(100) unique,
	balance float default 0,
)
create table cart(
	id int identity primary key,
	goodName nvarchar(100) not null,
	goodCount int default 1,
	customerId int references customer(id),
)


insert into customer
values ('First', 120120), ('Second', 1020)

insert into cart
values ('bread', 2, 1), ('milk', 1, 1), ('meat', 3, 1),
('burger', 3, 2), ('cola', 3, 2), ('fries', 1, 2), ('sauce', 2, 2)

select c.fio, r.goodName, r.goodCount
from customer as c join cart as r
on c.id = r.customerId

update cart
set goodName = 'bread'
where id = 1

select count(*), c.fio
from customer as c join cart as r
on c.id = r.customerId
group by c.fio
having count(*) = 4
order by c.fio

declare @firCount int
set @firCount = (select count(*)
					from customer as c join cart as r
					on c.id = r.customerId
					where c.id = 1)
select @firCount

declare @second int
set @second = (select count(*)
					from customer as c join cart as r
					on c.id = r.customerId
					where c.id = 2)
select @second

if @firCount > @second
begin
	select 'у первого больше член'
	select @firCount
end
else
	select 'у второго меньше член', @second

declare @name nvarchar(100) = 'milk'
select @name

if (select count(*) from cart where goodName like @name) = 1
	select 'exist'
else
	select 'no'


