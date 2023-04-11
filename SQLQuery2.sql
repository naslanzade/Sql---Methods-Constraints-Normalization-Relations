create table Teachers(
[Id] int primary key identity(1,1),
[Name] nvarchar (50) not null,
[Surname] nvarchar (50) not null,
[Email] nvarchar (100) unique,
[Age] int check(Age>18),
[Salary] decimal
);


insert into Teachers([Name],[Surname],[Email],[Age],[Salary])
values('Javid','Bashirov','javidbashirov@gmail.com',29,1375.55),
      ('Fatima','Bayramova','fatima@mail.ru',20,780),
	  ('Fuad','Hesenov','hesenov@mail.ru',35,1767.89),
	  ('Lala','Quliyeva','lala@gmail.com',25,1250.66),
	  ('Mustafa','Baghirov','baghirov@gmail.com',33,1445.77)


select * from Teachers


--first query
select CAST(MAX(src.age_avg) as integer) as "Highest age"
from (
  select [Age], AVG([Age]) as age_avg
  from Teachers
  group by [Age]
) src



--second query
select * from Teachers where [Salary] between 1000 and 3000


--third query
select * from Teachers where [Email] like '%mail.ru'

--fourth query
select * from Teachers where [Name] like 'F%'


