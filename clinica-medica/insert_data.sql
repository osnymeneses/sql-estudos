-- Pacientes
INSERT INTO TB_PACIENTES (nome_paciente, cidade, plano_saude) VALUES
('Mateus Andrade', 'São Paulo', 'Bradesco Saúde'),
('Marina Teixeira', 'Rio de Janeiro', 'Amil'),
('João Vitor Reis', 'Belo Horizonte', 'Bradesco Saúde'),
('Melissa Farias', 'Campinas', 'SulAmérica'),
('Otávio Pinto', 'Curitiba', 'Bradesco Saúde'),
('Manuela Duarte', 'São Paulo', 'Amil'),
('Bruno Cavalcanti', 'Niterói', 'Bradesco Saúde'),
('Milena Vasconcelos', 'Porto Alegre', 'SulAmérica'),
('Diego Nogueira', 'São Paulo', 'Bradesco Saúde'),
('Marcela Xavier', 'Rio de Janeiro', 'Amil');

-- Médicos
INSERT INTO TB_MEDICOS (nome_medico, especialidade) VALUES
('Dr. Renato Freitas', 'Cardiologia'),
('Dra. Vanessa Lopes', 'Dermatologia'),
('Dr. Igor Batista', 'Ortopedia'),
('Dra. Camila Rezende', 'Clínico Geral'),
('Dr. Thiago Moraes', 'Cardiologia');
-- Repare: nem todos os médicos terão consultas registradas

-- Consultas
INSERT INTO TB_CONSULTAS (id_paciente, id_medico, data_consulta, valor_consulta, status) VALUES
(1, 1, '2025-05-02', 350.00, 'Realizada'),
(2, 2, '2025-05-05', 180.00, 'Realizada'),
(3, 1, '2025-05-10', 420.00, 'Cancelada'),
(4, 3, '2025-05-15', 90.00, 'Realizada'),
(5, 4, '2025-05-20', 60.00, 'Realizada'),
(6, 1, '2025-06-01', 500.00, 'Realizada'),
(7, 2, '2025-06-05', 150.00, 'Remarcada'),
(8, 3, '2025-06-10', 300.00, 'Realizada'),
(9, 4, '2025-06-15', 70.00, 'Realizada'),
(10, 1, '2025-06-20', 610.00, 'Realizada'),
(1, 3, '2025-07-01', 95.00, 'Realizada'),
(5, 4, '2025-07-05', 55.00, 'Cancelada');