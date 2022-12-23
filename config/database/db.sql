create database inaya;
create table users(
    id int(4) primary key auto_increment,
    name varchar(255) not null,
    email varchar(255) not null,
    password varchar(255) not null,
);