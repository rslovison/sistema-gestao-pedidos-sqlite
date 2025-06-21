# Sistema de Gestão de Pedidos - SQLite

Este projeto simula um sistema completo de gestão de pedidos, incluindo clientes, fornecedores, categorias de produtos e pedidos realizados. Ele foi desenvolvido como exercício prático para consolidar conhecimentos em SQL, com foco em estruturação de banco de dados, manipulação de dados e consultas otimizadas.

## 📌 Objetivo

Aplicar e demonstrar habilidades com SQL em um contexto realista, utilizando o DBeaver como ambiente de desenvolvimento e o SQLite como mecanismo de banco de dados. Os dados foram organizados em tabelas relacionais e manipulados por meio de comandos SQL robustos.

## 🛠️ Tecnologias e Ferramentas

- **SQL (SQLite)**
- **DBeaver** – ambiente de desenvolvimento SQL
- **Arquivos CSV** – usados para simular dados reais
- **GitHub** – versionamento e publicação do projeto

## 🗂️ Estrutura do Banco de Dados

O banco de dados simula as seguintes entidades:

- `tabelaclientes` – dados de clientes
- `tabelafornecedores` – dados dos fornecedores
- `tabelacategorias` – categorias dos produtos
- `tabelaprodutos` – produtos comercializados
- `tabelapedidos` – pedidos realizados
- `tabelapedidosgold` – pedidos acima de R$ 400 extraídos da tabela principal

Relacionamentos entre tabelas são implementados com **chaves estrangeiras** (`FOREIGN KEY`), garantindo integridade referencial.

## 📋 Funcionalidades Desenvolvidas

- Criação de tabelas com `CREATE TABLE`
- Inserção de dados (`INSERT INTO`), incluindo inserções múltiplas e inserção via `SELECT`
- Alterações estruturais com `ALTER TABLE`
- Atualizações de dados com `UPDATE`
- Exclusões seguras com `DELETE` (usando `WHERE`)
- Consultas com filtros (`WHERE`, `BETWEEN`, `>`, `<`, `<>`)
- Evitar duplicidade com `SELECT DISTINCT`
- Uso de funções como `LOWER()` para filtragem textual
- Criação de tabela filtrada (`tabelapedidosgold`) com base em regra de negócio (valor do pedido ≥ 400)

## 🧠 Aprendizados

Este projeto foi importante para fixar conceitos essenciais de SQL, normalização de dados, relacionamento entre tabelas e boas práticas de manipulação segura de dados.

Também foi um exercício prático de utilização do DBeaver para execução de scripts SQL e análise visual das tabelas e resultados.

## 📎 Arquivos incluídos

- `SQLite.sql`: script completo com criação de tabelas, inserção de dados e consultas
- `tabela pedidos.csv`: dados simulados dos pedidos
- `tabela fornecedores.csv`: dados simulados dos fornecedores

## 📌 Observação

Todos os dados utilizados neste projeto são **fictícios** e usados apenas para fins educacionais.

---

## 📫 Contato

Caso queira discutir sobre SQL, projetos de dados ou colaborações:

**Raphael de Souza Lovison** 
🔗 [LinkedIn](https://www.linkedin.com/in/raphaelsouzalovison)

