CREATE DATABASE bd_projetoJAVA;
USE bd_projetoJAVA;

drop table tbl_reclamacao;

-- TABELAS
CREATE TABLE tbl_reclamacao (
id_reclamacao INT PRIMARY KEY AUTO_INCREMENT,
titulo_reclamacao VARCHAR(50),
descricao_reclamacao VARCHAR(1000),
prioridade_reclamacao TINYINT(1),
sugestao_melhoria_reclamacao VARCHAR(1000)
);

-- INSERT
INSERT INTO tbl_reclamacao (titulo_reclamacao, descricao_reclamacao, prioridade_reclamacao, sugestao_melhoria_reclamacao)
VALUES 
('Falta de Rampas para Cadeirantes', 'Na região Centro de Taboão da Serra, há uma grande falta de rampas para cadeirantes, dificultando seu acesso!', 7, 'A inclusão de mais rampas para cadeirantes na região.'),
('Trechos esburacados na rodovia', 'Muitos buracos na rodovia Régis Bittencourt, podendo causar acidentes!', 10, 'Ajuste nas rodovias, de extrema urgência!'),
('Falta de iluminação Shopping', 'Há uma grande falta de postes de luz e iluminação decente ao redor do Shopping, tornando um local inseguro para visitar.', 8, 'Inclusão de mais postes de luz, ou locais mais iluminados ao redor do Shopping.');

-- Verificar se registros foram inseridos
SELECT * FROM tbl_reclamacao;
