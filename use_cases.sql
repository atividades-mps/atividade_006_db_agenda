-- Active: 1660825809219@@127.0.0.1@3306@mps

-- 1. Comando SQL pra adicionar um novo usuario
INSERT INTO agenda_usuario(
    usuario_nome, 
    usuario_email, 
    usuario_senha, 
    usuario_status
) 
VALUES ('Teste','teste@gmail.com', '12345678', 0);
-- ====================================================
-- 2. Comando SQL pra se logar
SELECT usuario_id 
FROM agenda_usuario
WHERE usuario_nome = 'Teste' AND usuario_senha = '12345678';

UPDATE agenda_usuario 
SET usuario_status = 1
WHERE usuario_nome = 'Teste' AND usuario_senha = '12345678';
-- ====================================================
-- 3. Comando SQL pra se deslogar
UPDATE agenda_usuario 
SET usuario_status = 0
WHERE usuario_id = 7;
-- ====================================================
-- 4. Comando SQL pra listar os eventos de um usuario
SELECT e.*
FROM agenda_usuario as u, agenda_eventos as e
WHERE u.usuario_id = 1 AND e.usuario_id = 1;
-- ====================================================
-- 5. Comando SQL para adicionar evento a um usuario
INSERT INTO agenda_eventos(evento_titulo, 
    evento_data_hora, 
    evento_descricao, 
    evento_status, 
    usuario_id
) VALUES
('Evento teste', '2023-02-14 10:00:56', 'Vai ser um evento legal', 0, 1);
-- ====================================================
-- 6. Comando SQL para editar evento a um usuario
UPDATE agenda_eventos
SET evento_titulo = 'Evento novo', evento_descricao = 'Alterei este evento'
WHERE evento_id = 27;
-- ====================================================
-- 7. Comando SQL para deletar evento a um usuario
DELETE FROM agenda_eventos
WHERE evento_id = 52;
-- ====================================================
-- 8. Comando SQL para trocar senha a um usuario
UPDATE agenda_usuario
SET usuario_senha = '123'
WHERE usuario_id = 1;
-- ====================================================
-- 9. Comando SQL para excluir logicamente um usuário
-- ====================================================

DELETE FROM agenda_eventos
WHERE usuario_id = 2;


DELETE FROM agenda_usuario
WHERE usuario_id = 2;

-- ====================================================
-- 10. Filtrar eventos de um usuário do dia atual
SELECT e.*
FROM agenda_usuario as u, agenda_eventos as e
WHERE u.usuario_id = 1 AND e.usuario_id = 1 
    AND e.evento_data_hora BETWEEN '2023-02-14 00:00:00' AND '2023-02-14 23:59:00';
-- ====================================================
-- 11. Filtrar eventos de um usuário por mês e semana
SELECT e.*
FROM agenda_usuario as u, agenda_eventos as e
WHERE u.usuario_id = 1 AND e.usuario_id = 1 
    AND e.evento_data_hora BETWEEN '2023-02-01 00:00:00' AND '2023-02-28 23:59:00';

SELECT e.*
FROM agenda_usuario as u, agenda_eventos as e
WHERE u.usuario_id = 1 AND e.usuario_id = 1 
    AND e.evento_data_hora BETWEEN '2023-02-05 00:00:00' AND '2023-02-11 23:59:00';
-- ====================================================

-- UTILIDADES
SELECT * FROM agenda_usuario;

SELECT * FROM agenda_eventos;