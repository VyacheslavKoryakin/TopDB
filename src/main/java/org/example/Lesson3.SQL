create table if not exists author(
                                     id bigint generated always as identity primary key,
                                     name varchar (20),
                                     second_name varchar(20),
                                     category varchar(20)
);

create table if not exists book(
                                   id bigint generated always as identity primary key,
                                   title varchar (50),
                                   category varchar(50),
                                   publishing_id bigint, constraint fk_publishing foreign key (publishing_id) references publishing_house(id),
                                   year int
);

create table if not exists publishing_house(
                                               id bigint generated always as identity primary key,
                                               name varchar (20),
                                               city varchar(20)
);

create table if not exists author_book(
                                          author_id bigint, constraint fk_author foreign key (author_id) references author(id),
                                          book_id bigint, constraint fk_book foreign key (book_id) references book(id)
);

insert into publishing_house (name, city)
values('Вильямс','Москва'),
      ('АСТ','Самара'),
      ('Центрполиграф','Москва')
;


insert into author
(name, second_name, category)
values('Айзек','Азимов','Фантаст'),
      ('Константин','Паустовкий', 'детский'),
      ('Герберт','Шилд','программист'),
      ('Роберт','Сэджвик','программист'),
      ('Кевин','Уэйн','программист')
;

select * from author;

select * from book;

select * from publishing_house;

insert into book
(title ,category, publishing_id, year)
values('Алгоритмы джава','программирование',1,'2019'),
      ('Java.Полное руководство','программирование',1,'2018'),
      ('Ближний восток','фантастика',2,'2024'),
      ('Золотая роза','детское',3,'2022')
;

select * from book b
                  join publishing_house ph
                       on b.publishing_id = ph.id;