/* Criando Banco */
CREATE DATABASE pousada;

/* Ativando Banco de Dados */
USE pousada;

/* Criando tabela de Clientes */
CREATE TABLE `clientes` (
  id int(11) PRIMARY KEY AUTO_INCREMENT,
  nome varchar(50) NOT NULL,
  cpf int(11) NOT NULL,
  endereco varchar(60) NOT NULL,
  ddd int(2) NOT NULL,
  telefone int(11) NOT NULL,
  cidade varchar(25) NOT NULL,
  estado varchar(25) NOT NULL,
  email varchar(25) NOT NULL
);

/* Criando tabela de quartos */
CREATE TABLE quartos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    numero INT NOT NULL,
    status ENUM('ocupado', 'aguardandoPagamento', 'disponivel') DEFAULT 'disponivel',
    preco INT NOT NULL,
    descricao varchar(100) NOT NULL
);

/* Criando tabela de quartos alugados */
CREATE TABLE alugados(
	id INT PRIMARY KEY AUTO_INCREMENT,
    fk_idCliente INT NOT NULL,
    fk_idQuarto INT NOT NULL,
    data_entrada DATETIME NOT NULL,
    data_saida DATETIME NOT NULL,
    preco_diaria DOUBLE NOT NULL,
    quantidade_dias INT NOT NULL,
    preco_total DOUBLE NOT NULL,
    status_pagamento ENUM('pago','nao_pago') NOT NULL,
    
    /* Chaves estrangeiras */
    FOREIGN KEY (fk_idCliente) REFERENCES clientes(id),
    FOREIGN KEY (fk_idQuarto) REFERENCES quartos(id)
);