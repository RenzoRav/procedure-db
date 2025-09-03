INSERT INTO autor (nome) VALUES
('Machado de Assis'),
('J. K. Rowling'),
('George Orwell'),
('Clarice Lispector');

INSERT INTO livro (titulo, id_autor, ano_publicacao) VALUES
('Dom Casmurro', 1, 1899),
('Harry Potter e a Pedra Filosofal', 2, 1997),
('1984', 3, 1949),
('A Hora da Estrela', 4, 1977),
('Harry Potter e a Câmara Secreta', 2, 1998);

INSERT INTO usuario (nome) VALUES
('Ana'),
('Bruno'),
('Carla'),
('Diego');

INSERT INTO emprestimo (id_usuario, id_livro, data_emprestimo, data_devolucao) VALUES
(1, 1, '2025-08-01', '2025-08-10'),
(2, 2, '2025-08-02', NULL),
(3, 3, '2025-08-05', '2025-08-15'),
(1, 5, '2025-08-07', NULL),
(4, 4, '2025-08-08', NULL);


--TESTANDO PROCEDURES

-- cadastrar novos usuários
CALL cadastrar_usuario('Eduardo');
CALL cadastrar_usuario('Fernanda');
SELECT * FROM usuario;

-- cadastrar novos livros
CALL cadastrar_livro('O Alquimista', 1, 1988);
CALL cadastrar_livro('Ensaio sobre a Cegueira', 4, 1995);
SELECT * FROM livro;

-- registrar devoluções (id dos empréstimos: 2 e 4 estavam em aberto)
CALL registrar_devolucao(2, '2025-09-02');
CALL registrar_devolucao(4, '2025-09-03');
SELECT * FROM emprestimo WHERE id IN (2, 4);

-- excluir usuário e seus empréstimos
-- excluir Carla (id = 3)
CALL excluir_usuario(3);
SELECT * FROM usuario;
SELECT * FROM emprestimo WHERE id_usuario = 3;

-- livros_com_autores
SELECT * FROM livros_com_autores;

-- usuarios_com_emprestimos
SELECT * FROM usuarios_com_emprestimos;

-- emprestimos_em_aberto
SELECT * FROM emprestimos_em_aberto;

-- historico_emprestimos
SELECT * FROM historico_emprestimos;

-- qtd_emprestimos_por_usuario
SELECT * FROM qtd_emprestimos_por_usuario;

-- livros_mais_recentes
SELECT * FROM livros_mais_recentes;

-- usuarios_com_mais_de_um_emprestimo
SELECT * FROM usuarios_com_mais_de_um_emprestimo;