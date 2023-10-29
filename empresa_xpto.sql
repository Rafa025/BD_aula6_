-- criando banco de dadados
CREATE DATABASE empresa_xpto; -- ativando banco de dados

USE empresa_xpto;
describe funcionarios;

CREATE TABLE funcionarios( -- criando tabela
	nome VARCHAR(60),
    cpf CHAR(12),
    cargo VARCHAR(60),
    salario FLOAT,
    nacimento DATE
    );
INSERT INTO funcionarios(nome, cpf, cargo, salario, nacimento) -- inserindo tabela e valores
	VALUES('João Vitor Almeida', 111111111-11, 'TI', 2000.00, '1998-09-04');
INSERT INTO funcionarios(nome, cpf, cargo, salario, nacimento)
values('Paulo Vítor Araújo', 222222222-22, 'Recusos Humanos', 3000.00, '1999-03-12');


SELECT * FROM funcionarios; -- execultando a tabela

SELECT nome, nacimento FROM funcionarios; -- consultar apenas as colunas selecionadas

SELECT nome, cargo, salario FROM funcionarios;

SELECT salario, cargo FROM funcionarios;

SELECT * FROM funcionarios WHERE cargo = "Arquiteto de Software"; -- consulta apenas o cargo selecionado

SELECT nome, cargo, salario FROM funcionarios WHERE cargo = "Gerente de Projetos"; -- consulta o nome, cargo, salario do gerente de projetos
 
SELECT salario, cargo FROM funcionarios WHERE cargo = "Professor";

SELECT nome, cargo, salario FROM funcionarios WHERE salario > "10000";

SELECT nome FROM funcionarios WHERE salario < "1320"; 

SELECT cargo FROM funcionarios WHERE salario >= "28000";

SELECT * FROM funcionarios WHERE nome = "Monica Yates";

SELECT cargo, salario FROM funcionarios WHERE nome = "Jennfer Gardner";

SELECT nacimento  FROM funcionarios WHERE nome = "Russell Cole";

SELECT nome, cargo FROM  funcionarios WHERE cpf = "84716339531";

SELECT 
	nome as 'Nome Completo',
    salario as 'Salário',
   nacimento as 'Data de Nacimento'
FROM funcionarios; -- Apelidar as colunas

SELECT 
	nome as 'Nome completo',
    salario as 'Salário',
    nacimento as 'Data de nacimento'
    FROM funcionarios 
    WHERE nacimento > "1998-01-01";
SELECT * FROM funcionarios 
    ORDER BY nome ASC;
    
SELECT nome, cargo, salario 
    FROM funcionarios 
    ORDER BY nome DESC;
    
SELECT salario, cargo 
    FROM funcionarios
    ORDER BY nacimento DESC;
    
SELECT nome as 'Nome Completo',
    cargo
    FROM funcionarios
    ORDER BY salario DESC LIMIT 5;
    
    
SELECT nome FROM funcionarios
	ORDER BY nacimento DESC LIMIT 1;
    
SELECT * FROM funcionarios 
	ORDER BY salario ASC LIMIT 10;
SELECT nome, salario, cargo 
FROM funcionarios 
WHERE cargo = "Professor"
ORDER BY nome ASC;

SELECT nome, salario, cargo FROM funcionarios 
WHERE cargo = "Medico" 
ORDER BY salario DESC;

SELECT nome, cpf FROM funcionarios 
WHERE cargo = "Recepcionista"
ORDER BY salario ASC limit 1;



   


