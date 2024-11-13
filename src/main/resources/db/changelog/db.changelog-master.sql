--changeset Stepanov:1
create schema if not exists home;

create table if not exists home.CUSTOMERS
(
    id           SERIAL PRIMARY KEY,
    name         varchar not null,
    surname      varchar not null,
    age          int     not null,
    phone_number varchar not null
);

create table if not exists home.ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         TIMESTAMP DEFAULT now(),
    customer_id  int REFERENCES home.CUSTOMERS (id),
    product_name varchar not null,
    amount       int     not null
    );

insert into home.CUSTOMERS
values (DEFAULT, 'Ivan', 'Petrov', 21, '+7910111111'),
       (DEFAULT, 'Ivan', 'Sidorov', 32, '+7926222222'),
       (DEFAULT, 'Aleksey', 'Ivanov', 18, '+79163333333'),
       (DEFAULT, 'aleksey', 'Smirnov', 50, '+79263333333'),
       (DEFAULT, 'Dmitriy', 'Petrov', 31, '+79104444444'),
       (DEFAULT, 'Ivan', 'Aleksandrov', 44, '+79165555555'),
       (DEFAULT, 'Dmitriy', 'Ivanov', 35, '+79266666666'),
       (DEFAULT, 'Ivan', 'Sokolov', 60, '+79037777777');

insert into home.ORDERS
values (DEFAULT, DEFAULT, 1, 'Молоко', 80),
       (DEFAULT, DEFAULT, 2, 'Кефир', 90),
       (DEFAULT, DEFAULT, 4, 'Молоко', 80),
       (DEFAULT, DEFAULT, 8, 'Сметана', 100),
       (DEFAULT, DEFAULT, 6, 'Сыр', 300),
       (DEFAULT, DEFAULT, 3, 'Сыр', 300),
       (DEFAULT, DEFAULT, 4, 'Кефир', 90);
