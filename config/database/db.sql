create database inaya;
use inaya;

create table roles (
    id int(4) primary key auto_increment,
    name varchar(255) not null,
    description varchar(255) not null
);

/* 
    TODO: crear 3 roles: administrator, owner y individual
*/

create table users (
    id int(4) primary key auto_increment,
    name varchar(255) not null,
    email varchar(255) not null,
    password varchar(255) not null,
    profile varchar(255) not null,
    rol int(4),
     
    constraint rol_by_user foreign key (rol) references roles(id)
);

/* 
    TODO: crear 3 usuarios para cada tipo de usuario: administrator, owner y individual
*/

create table categories (
    id int(4) primary key auto_increment,
    name varchar(255) not null,
    description varchar(255) not null,
    image varchar(255) not null
);

/* 
    TODO: crear categorias: fashion(tiendas de ropa y diseno), ocio(bares de copas), bar(bares de comida), esthetic(pelus, dermocosmetica, etc)
*/