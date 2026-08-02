-- Tabela de Clientes
CREATE TABLE TB_CLIENTES (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    estado CHAR(2)
);

-- Tabela de Funcionários
CREATE TABLE TB_FUNCIONARIOS (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    departamento VARCHAR(50)
);

-- Tabela de Pedidos
CREATE TABLE TB_PEDIDOS (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_funcionario INT,
    data_pedido DATE,
    valor_total DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (id_cliente) REFERENCES TB_CLIENTES(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES TB_FUNCIONARIOS(id_funcionario)
);