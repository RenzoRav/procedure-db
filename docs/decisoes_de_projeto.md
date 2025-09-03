# decisões de Projeto

## objetivoc
criar um sistema simples de biblioteca, com controle de livros, autores, usuários e empréstimos, usando PostgreSQL e procedures

## organização do Projeto

- `01_schema.sql`: estrutura do banco (tabelas)
- `02_views.sql`: relatórios com views
- `03_procedures.sql`: procedures para ações no banco
- `04_tests.sql`: testes das procedures e views
- `modelo_relacional.md`: modelo de dados

## principais Decisões

- **tipos**: `SERIAL` para IDs, `VARCHAR` para textos e `DATE` para datas
- **relacionamentos**: tudo com integridade referencial via `FOREIGN KEY`
- **procedures**: criadas para centralizar a lógica (ex: cadastro, devolução)
- **views**: facilitam consultas e relatórios

## Melhorias Futuras

- checar se o livro está disponível antes de emprestar
- limitar número de livros por usuário
- adicionar logs de ações no sistema