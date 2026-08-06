-- CREATE DATABASE IF NOT EXISTS ans_operadoras;
USE ans_operadoras;

CREATE TABLE operadoras (
registro_operadora INT NOT NULL,
cnpj CHAR(14) NOT NULL,
razao_social VARCHAR(255) NOT NULL,
nome_fantasia VARCHAR(255),
modalidade VARCHAR (100),
logradouro VARCHAR(255),
complemento VARCHAR(255),
numero VARCHAR(20),
bairro VARCHAR(150),
cidade VARCHAR(150),
uf CHAR(2),
cep CHAR(8),
ddd CHAR(2),
telefone VARCHAR(20),
fax VARCHAR(20),
endereco_eletronico VARCHAR(255),
representante VARCHAR(255),
cargo_representante VARCHAR(150),
regiao_de_comercializacao INT,
data_registro_ans DATE,
PRIMARY KEY (registro_operadora)

);

