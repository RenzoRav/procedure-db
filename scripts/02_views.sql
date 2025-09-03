-- livros_com_autores
CREATE VIEW livros_com_autores AS
SELECT l.titulo, a.nome AS autor
FROM livro l
JOIN autor a ON l.id_autor = a.id;

-- usuarios_com_emprestimos
CREATE VIEW usuarios_com_emprestimos AS
SELECT u.nome AS usuario, l.titulo AS livro
FROM emprestimo e
JOIN usuario u ON e.id_usuario = u.id
JOIN livro l ON e.id_livro = l.id;

-- emprestimos_em_aberto
CREATE VIEW emprestimos_em_aberto AS
SELECT *
FROM emprestimo
WHERE data_devolucao IS NULL;

-- historico_emprestimos
CREATE VIEW historico_emprestimos AS
SELECT 
    u.nome AS usuario,
    l.titulo AS livro,
    a.nome AS autor,
    e.data_emprestimo
FROM emprestimo e
JOIN usuario u ON e.id_usuario = u.id
JOIN livro l ON e.id_livro = l.id
JOIN autor a ON l.id_autor = a.id;

-- qtd_emprestimos_por_usuario
CREATE VIEW qtd_emprestimos_por_usuario AS
SELECT 
    u.nome AS usuario,
    COUNT(e.id) AS quantidade_emprestimos
FROM usuario u
LEFT JOIN emprestimo e ON u.id = e.id_usuario
GROUP BY u.nome;

-- livros_mais_recentes
CREATE VIEW livros_mais_recentes AS
SELECT 
    l.titulo,
    a.nome AS autor,
    l.ano_publicacao
FROM livro l
JOIN autor a ON l.id_autor = a.id
WHERE l.ano_publicacao > 1950;

-- usuarios_com_mais_de_um_emprestimo
CREATE VIEW usuarios_com_mais_de_um_emprestimo AS
SELECT 
    u.nome,
    COUNT(e.id) AS total_emprestimos
FROM usuario u
JOIN emprestimo e ON u.id = e.id_usuario
GROUP BY u.nome
HAVING COUNT(e.id) > 1;
