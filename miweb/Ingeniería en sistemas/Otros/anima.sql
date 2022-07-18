CREATE DATABASE primerdatabase;
SHOW DATABASES;
use primerdatabase;
CREATE TABLE animales (
	id int,
    tipo varchar(255),
    estado varchar(255),
	primary key(id)
);

-- insert into animales (tipo, estado) values ('chanchito', 'feliz');
-- esta línea no será ejecutada 

alter table animales modify column id int auto_increment;

show create table animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

insert into animales (tipo, estado) values ('chanchito', 'feliz');
delete from animales where id = 1;
insert into animales (tipo, estado) values ('dragon', 'feliz');
insert into animales (tipo, estado) values ('felipe', 'triste');

show table animales;

select * from animales;
select * from animales where estado = 'feliz';
select * from animales where estado = 'feliz' and tipo = 'felipe';


update user set edad = 15 where id = 3;
update user set id = 3 where id = 5;
update animales set id = 3 where id = 4;

select * from animales;

delete from animales where estado = 'feliz';
delete from user where id = 3;


create table user(
id int not null auto_increment,
name varchar(50) not null,
edad int not null,
email varchar(100) not null,
primary key (id)
);

insert into user (name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
insert into user (name, edad, email) values ('Layla', 15, 'layla@gmail.com');
insert into user (name, edad, email) values ('Nicolás', 36, 'nico@gmail.com');
insert into user (name, edad, email) values ('Chanchito', 7, 'chanchito@gmail.com');

select * from user;

select * from user limit 1;

select * from user where edad > 15;

select * from user where edad >= 15;

select * from user where edad > 20 and email = 'nico@gmail.com';
select * from user where edad >= 20 or email = 'layla@gmail.com';
select * from user where email != 'layla@gmail.com';
select * from user where edad between 15 and 30;
select * from user where email like '%gmail%';
select * from user where email like 'oscar%';
select * from user order by edad desc;
select max(edad) as mayor from user;
select min(edad) as alv from user;

select id, name from user;
select id, name as nombre from user;
