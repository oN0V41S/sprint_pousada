use posada;

/* Inserindo dados na tabela clientes */
INSERT INTO clientes (nome, cpf, endereco, ddd, telefone, cidade, estado, email, permissao, senha)
VALUES
  ('Fulano de Tal', 1234567890, 'Rua dos Exemplos, 123', 11, 999999999, 'São Paulo', 'SP', 'fulano@exemplo.com', '0', 'senha123'),
  ('Ciclano da Silva', 1234567890, 'Avenida Paulista, 456', 21, 888888888, 'Rio de Janeiro', 'RJ', 'ciclano@exemplo.com', '1', 'senhasegura');