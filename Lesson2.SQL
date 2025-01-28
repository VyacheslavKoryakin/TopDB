create table customer
(
    id bigint generated always as identity
        primary key,
    name varchar(10),
    phone integer,
    city varchar(15)
);

insert into customer
(name ,phone, city)
values('John',333, 'Ленинград');

insert into customer
(name ,phone, city)
values('Vasya',222, 'Ленинград');

insert into customer
(name ,phone, city)
values('Egor',6666, 'Ленинград'),
      ('Robert', 777,'Москва'),
      ('Roman', 888,'Казань');

UPDATE  customer
set  name = 'Sasha' where id =1;

alter table customer
    add column age int;

UPDATE  customer
set  age = 31 where id =1;

UPDATE  customer
set  age = 19 where name ='Vasya';

UPDATE  customer
set  age = 23 where phone =6666;


update customer
set city ='Ленинград' where id > 4;

delete from customer
where id > 3;


update customer
set city = 'Санкт-Петербург' where city ='Ленинград';

insert into customer (name, phone, city, age)
values ('Semen',111,'Elabuga',28);

select *
from customer where city ='Санкт-Петербург'
order by name asc;

select *
from customer
order by id;

