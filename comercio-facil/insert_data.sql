-- Inserindo Clientes
INSERT INTO TB_CLIENTES (nome_cliente, cidade, estado) VALUES
('Marcos Silva', 'São Paulo', 'SP'),
('Mariana Costa', 'Rio de Janeiro', 'RJ'),
('João Pereira', 'Belo Horizonte', 'MG'),
('Marcelo Souza', 'Campinas', 'SP'),
('Ana Ferreira', 'Niterói', 'RJ'),
('Carlos Lima', 'Curitiba', 'PR'),
('Mônica Alves', 'São Paulo', 'SP'),
('Rafael Santos', 'Rio de Janeiro', 'RJ'),
('Beatriz Rocha', 'Porto Alegre', 'RS'),
('Miguel Barros', 'São Paulo', 'SP');

-- Inserindo Funcionários
INSERT INTO TB_FUNCIONARIOS (nome_funcionario, cargo, departamento) VALUES
('Fernanda Dias', 'Vendedor', 'Comercial'),
('Ricardo Nunes', 'Vendedor', 'Comercial'),
('Patrícia Gomes', 'Gerente', 'Comercial'),
('Lucas Martins', 'Vendedor', 'Comercial'),
('Juliana Cardoso', 'Analista', 'Administrativo'),
('Eduardo Ramos', 'Vendedor', 'Comercial');
-- Repare: 'Juliana Cardoso' e 'Eduardo Ramos' não terão pedidos (útil pro Exercício 3)

-- Inserindo Pedidos
INSERT INTO TB_PEDIDOS (id_cliente, id_funcionario, data_pedido, valor_total, status) VALUES
(1, 1, '2025-01-10', 850.00, 'Concluído'),
(2, 2, '2025-01-15', 120.50, 'Concluído'),
(3, 1, '2025-02-01', 45.00, 'Cancelado'),
(4, 3, '2025-02-10', 670.00, 'Concluído'),
(5, 2, '2025-02-20', 90.00, 'Concluído'),
(6, 1, '2025-03-05', 320.00, 'Pendente'),
(7, 4, '2025-03-12', 999.90, 'Concluído'),
(8, 3, '2025-03-18', 55.00, 'Concluído'),
(9, 2, '2025-04-01', 430.00, 'Cancelado'),
(10, 4, '2025-04-10', 210.00, 'Concluído'),
(1, 3, '2025-04-15', 60.00, 'Concluído'),
(2, 1, '2025-05-02', 1200.00, 'Concluído');