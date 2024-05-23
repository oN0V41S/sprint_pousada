create database pousada;

use pousada;

create table tblCliente(
	id int primary key auto_increment,
	nome varchar(50) not null,
	email varchar(60) not null,
	senha varchar(80) not null,
	admLevel enum('true','false') NOT NULL DEFAULT 'false'
);
create table tblQuarto(
	id int primary key auto_increment,
	numero smallint not null,
	imagem varchar(370) not null
);
create table tblReservas(
	id int primary key  auto_increment,
	fk_idCliente int not null,
	fk_idQuarto int not null,
	nomeCliente varchar(90) not null,
	cpf int(9) not null,
	endereco varchar(90) not null,
	cidade varchar(40) not null,
	estado varchar(40) not null,
	email varchar(40) not null,
	data_entrada date not null,
	data_saida date not null,
	numQuartos smallint not null,
	statusPagamento enum('pago','nao_pago') not null,
	FOREIGN KEY(fk_idCliente) REFERENCES tblCliente(id),
	FOREIGN KEY(fk_idQuarto) REFERENCES tblQuarto(id)
);