create database cadastro
default character set utf8
default collate utf8_general_ci;

create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum ('M', 'F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8;

insert into pessoas
(id ,nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Luiza', '2008-11-11', 'F', '56.5', '1.65', 'Brasil'),
(default, 'Ingrid', '2007-12-02', 'F', '59.1', '1.70', 'EUA'),
(default, 'Thays', '2007-10-13', 'F', '55.7', '1.69', default);

select * from gafanhotospessoas;

desc gafanhotos;

alter table pessoas
rename to gafanhotos; 

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
modify column profissao varchar(20) not null default '';


create table if not exists curso (
id int,
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
toltaulas int unsigned,
ano year default '2016'
)default charset=utf8;

insert into cursos values
('1', 'HTML4', 'Cursos de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014');

update cursos
set nome = 'HTML4'
where id = '1';

select * from 
