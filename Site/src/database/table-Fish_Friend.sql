create database Fish_Friend;
use Fish_Friend;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar (45),
email varchar(45) constraint chkemail check (email like ('%@%')),
senha varchar(45)
)auto_increment = 10;

create table tentativa(
idTentativa int primary key auto_increment,
erros int,
acertos int,
pontuacao int,
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario)
) auto_increment= 1;

create table feedBack(
idFeedBack int primary key auto_increment,
data date,
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario)
);

alter table feedBack modify column data datetime;

alter table feedback rename column descricao to comentario;


show tables;
select*from usuario;
select*from feedback;
select*from tentativa;

insert into usuario values
(null, 'teste', 'teste@gmail.com', 123);

truncate feedback;

insert into feedback values
(null, '2022-08-12', 10);

insert into tentativa values
(null, 2, 8, 8, 10);

SELECT 
    tentativa.acertos
FROM
    tentativa
        JOIN
    usuario ON fkUsuario = idUsuario
WHERE
    idUsuario = 10; 
    
    

select usuario.idUsuario, tentativa.acertos from tentativa join usuario on fkUsuario = idUsuario where usuario.idUsuario = 10 order by tentativa.acertos desc limit 7 ;
