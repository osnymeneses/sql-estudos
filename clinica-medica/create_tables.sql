CREATE TABLE TB_PACIENTES (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome_paciente VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    plano_saude VARCHAR(50)
);

CREATE TABLE TB_MEDICOS (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome_medico VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50)
);

CREATE TABLE TB_CONSULTAS (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    id_medico INT,
    data_consulta DATE,
    valor_consulta DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (id_paciente) REFERENCES TB_PACIENTES(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES TB_MEDICOS(id_medico)
);