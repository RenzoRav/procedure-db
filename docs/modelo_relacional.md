# modelo Relacional - sistema de biblioteca

## entidades

### autor
- `id`: chave primária
- `nome`: nome do autor

### livro
- `id`: chave primária
- `titulo`: título do livro
- `id_autor`: FK → autor
- `ano_publicacao`: ano da publicação

### usuario
- `id`: chave primária.
- `nome`: nome do usuário

### emprestimo
- `id`: chave primária.
- `id_usuario`: FK → usuario.
- `id_livro`: FK → livro.
- `data_emprestimo`: data do empréstimo 
- `data_devolucao`: data da devolução 

## relacionamentos

- um autor pode ter varios livros
- um usuário pode realizar varios emprsstimos
- um livro pode ser emprestado varias vezes 
- um empréstimo liga um livro a um usuário, com datas
