# Sistema de Gestão de Pessoas - SQL

Este projeto foi desenvolvido como parte de um exercício prático durante a faculdade. Ele consiste em um banco de dados simples para gestão de pessoas e departamentos, com a criação de tabelas, inserção de dados e consultas SQL para análise de informações.

## Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas:

1. **Depto (Departamento)**
   - `cd_depto`: Código do departamento (PK).
   - `ds_depto`: Descrição do departamento.
   
2. **Pssoa (Pessoa)**
   - `cd_pssoa`: Código da pessoa (PK).
   - `cd_depto`: Código do departamento (FK).
   - `ds_pssoa`: Nome da pessoa.
   - `dt_nasc`: Data de nascimento.

## Consultas SQL

O arquivo `Sistema de Gestão de Pessoas.sql` contém as seguintes operações e consultas:

1. **Criação de tabelas:**
   - `Depto`: Armazena os departamentos.
   - `Pssoa`: Armazena as pessoas associadas a um departamento.

2. **Criação de sequências:**
   - `seq_depto`: Sequência para inserção automática de códigos no `Depto`.
   - `seq_pssoa`: Sequência para inserção automática de códigos no `Pssoa`.

3. **Inserção de dados:**
   - Departamento "TI" adicionado à tabela `Depto`.
   - Pessoa "Rodolfo" adicionada à tabela `Pssoa`, associada ao departamento "TI".

4. **Alteração da tabela `Pssoa`:**
   - Adição da coluna `dt_nasc` para armazenar a data de nascimento das pessoas.
   - Atualização da data de nascimento de "Rodolfo" para "2000-10-18".

5. **Consultas:**
   - Seleção de pessoas que nasceram no mês de setembro.
   - Criação da visão `lotacao` para exibir nomes das pessoas e seus respectivos departamentos.
   - Criação da visão `Pessoas`, listando os nomes das pessoas em ordem decrescente.

## Como Usar

1. Clone o repositório:
   ```bash
   git clone https://github.com/ViniciusARD/Sistema-Gestao-Pessoas-SQL
   ```

2. Execute o script SQL em um SGBD de sua preferência (ex: PostgreSQL).

3. Explore as consultas e adapte conforme necessário.

## Tecnologias Utilizadas
- SQL (Structured Query Language)
- PostgreSQL

