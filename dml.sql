INSERT INTO "Estabelecimentos" ("id", "cnpj", "nome", "data_incricao", "tipo_estabelecimento", "horario_funcionamento", "created_at", "last_update")
VALUES
  (1, '12345678901234', 'Restaurante A', '2023-10-02 10:00:00', 'Restaurante', '2023-10-02 10:00:00', NOW(), NOW()),
  (2, '98765432109876', 'Café B', '2023-10-02 08:00:00', 'Café', '2023-10-02 08:00:00', NOW(), NOW()),
  (3, '56789012345678', 'Pizzaria C', '2023-10-02 18:00:00', 'Pizzaria', '2023-10-02 18:00:00', NOW(), NOW()),
  (4, '34567890123456', 'Lanchonete D', '2023-10-02 12:30:00', 'Lanchonete', '2023-10-02 12:30:00', NOW(), NOW()),
  (5, '78901234567890', 'Sorveteria E', '2023-10-02 15:00:00', 'Sorveteria', '2023-10-02 15:00:00', NOW(), NOW());


INSERT INTO "Usuarios" ("id", "nome", "email", "cpf", "telefone", "senha", "created_at", "last_update")
VALUES
  (1, 'João Silva', 'joao@email.com', '123.456.789-01', '(11) 98765-4321', 'senha123', NOW(), NOW()),
  (2, 'Maria Santos', 'maria@email.com', '987.654.321-09', '(21) 12345-6789', 'senha456', NOW(), NOW()),
  (3, 'Pedro Oliveira', 'pedro@email.com', '567.890.123-45', '(31) 23456-7890', 'senha789', NOW(), NOW()),
  (4, 'Ana Souza', 'ana@email.com', '345.678.901-23', '(41) 34567-8901', 'senha234', NOW(), NOW()),
  (5, 'Luiz Pereira', 'luiz@email.com', '789.012.345-67', '(51) 45678-9012', 'senha567', NOW(), NOW());

INSERT INTO "Avaliacoes" ("id", "descricao", "nota", "data", "created_at", "last_update", "pedido_id")
VALUES
  (1, 'Avaliação 1', 4.5, NOW(), NOW(), NOW(), 1),
  (2, 'Avaliação 2', 3.0, NOW(), NOW(), NOW(), 2),
  (3, 'Avaliação 3', 5.0, NOW(), NOW(), NOW(), 3),
  (4, 'Avaliação 4', 4.2, NOW(), NOW(), NOW(), 4),
  (5, 'Avaliação 5', 4.8, NOW(), NOW(), NOW(), 5);

INSERT INTO "Produtos" ("id", "nome", "preco", "descricao", "preco_promocional", "created_at", "last_update")
VALUES
  (1, 'Produto 1', 10.99, 'Descrição do Produto 1', 8.99, NOW(), NOW()),
  (2, 'Produto 2', 5.99, 'Descrição do Produto 2', 4.99, NOW(), NOW()),
  (3, 'Produto 3', 15.99, 'Descrição do Produto 3', 12.99, NOW(), NOW()),
  (4, 'Produto 4', 7.99, 'Descrição do Produto 4', 6.99, NOW(), NOW()),
  (5, 'Produto 5', 9.99, 'Descrição do Produto 5', 7.99, NOW(), NOW());

INSERT INTO "Produtos_Estabelecimentos" ("id", "estabelecimento_id", "produto_id", "pedido_minimo", "status", "created_at", "last_update")
VALUES
  (1, 1, 1, 10.00, true, NOW(), NOW()),
  (2, 2, 2, 5.00, true, NOW(), NOW()),
  (3, 3, 3, 15.00, true, NOW(), NOW()),
  (4, 4, 4, 7.00, true, NOW(), NOW()),
  (5, 5, 5, 9.00, true, NOW(), NOW());

INSERT INTO "Entregadores" ("id", "nome", "cpf", "created_at", "last_update")
VALUES
  (1, 'Entregador 1', '11111111111', NOW(), NOW()),
  (2, 'Entregador 2', '22222222222', NOW(), NOW()),
  (3, 'Entregador 3', '33333333333', NOW(), NOW()),
  (4, 'Entregador 4', '44444444444', NOW(), NOW()),
  (5, 'Entregador 5', '55555555555', NOW(), NOW());

INSERT INTO "Veiculos" ("id", "documentos", "placa", "cor", "entregador_id", "created_at", "last_update")
VALUES
  (1, 'Doc1', 'ABC-1234', 'Azul', 1, NOW(), NOW()),
  (2, 'Doc2', 'DEF-5678', 'Vermelho', 2, NOW(), NOW()),
  (3, 'Doc3', 'GHI-9012', 'Verde', 3, NOW(), NOW()),
  (4, 'Doc4', 'JKL-3456', 'Preto', 4, NOW(), NOW()),
  (5, 'Doc5', 'MNO-7890', 'Branco', 5, NOW(), NOW());

INSERT INTO "Pedidos" ("id", "estabelecimento_id", "veiculo_id", "usuario_id", "avaliacao_id", "codigo_confirmacao", "tempo_medio", "taxa_entrega", "status", "preco", "created_at", "last_update")
VALUES
  (1, 1, 1, 1, 1, 'ABCD123', '2023-10-02 11:30:00', 5.00, 'Pendente', '20.00', NOW(), NOW()),
  (2, 2, 2, 2, 2, 'EFGH456', '2023-10-02 09:45:00', 3.50, 'Entregue', '15.50', NOW(), NOW()),
  (3, 3, 3, 3, 3, 'IJKL789', '2023-10-02 19:15:00', 4.25, 'Em andamento', '18.25', NOW(), NOW()),
  (4, 4, 4, 4, 4, 'MNOP123', '2023-10-02 13:20:00', 6.00, 'Entregue', '24.00', NOW(), NOW()),
  (5, 5, 5, 5, 5, 'QRST567', '2023-10-02 16:30:00', 2.75, 'Pendente', '14.75', NOW(), NOW());

INSERT INTO "Pedidos_Produtos" ("id", "produto_id", "pedido_id", "quantidade", "preco_unitario", "created_at", "last_update")
VALUES
  (1, 1, 1, 3, 10.99, NOW(), NOW()),
  (2, 2, 2, 2, 5.99, NOW(), NOW()),
  (3, 3, 3, 1, 15.99, NOW(), NOW()),
  (4, 4, 4, 4, 7.99, NOW(), NOW()),
  (5, 5, 5, 5, 9.99, NOW(), NOW());

INSERT INTO "Enderecos" (ponto_de_referencia, cep, descricao_endereco, created_at, last_update, longitude, latitude)
VALUES
  ('Praça da Sé', '01001-000', 'Praça da Sé, São Paulo', '2023-10-30 09:00:00', '2023-10-30 09:00:00', -46.634621, -23.550520),
  ('Avenida Paulista', '01311-000', 'Avenida Paulista, São Paulo', '2023-10-30 10:30:00', '2023-10-30 10:30:00', -46.656058, -23.561070),
  ('Copacabana Beach', '22070-001', 'Copacabana Beach, Rio de Janeiro', '2023-10-30 08:45:00', '2023-10-30 08:45:00', -43.178625, -22.968134),
  ('Golden Gate Bridge', '94129', 'Golden Gate Bridge, San Francisco', '2023-10-30 12:15:00', '2023-10-30 12:15:00', -122.478256, 37.819929),
  ('Big Ben', 'SW1A 0AA', 'Big Ben, London', '2023-10-30 14:20:00', '2023-10-30 14:20:00', -0.124625, 51.500729);