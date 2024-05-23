use posada;

/* Inserindo dados na tabela */
INSERT INTO alugados (
  `fk_idCliente`,
  `fk_idQuarto`,
  `data_entrada`,
  `data_saida`,
  `preco_diaria`,
  `quantidade_dias`,
  `preco_total`,
  `status_pagamento`,
  `data_pagamento`
)
VALUES
  (123, 456, '2024-05-01', '2024-05-05', 100.00, 4, 400.00, 'pago', '2024-04-30'),
  (456, 789, '2024-05-06', '2024-05-10', 150.00, 3, 450.00, 'nao_pago', '2024-05-01');