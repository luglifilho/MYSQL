Create DATABASE db_RH;

Use db_RH;

Create TABLE tb_funcionarios(
nome VARCHAR(255) NOT NULL, 
dataAdmissao DATE NOT NULL,
ativo BOOLEAN NOT NULL,
dataDemissao DATE,
salario DECIMAL
);

INSERT INTO tb_funcionarios(nome, dataAdmissao, ativo, salario)
VALUES ("Daniel", "2023-08-01", true, 3000.00);
INSERT INTO tb_funcionarios(nome, dataAdmissao, ativo, dataDemissao, salario)
VALUES ("David", "2022-05-20", false, "2023-08-05", 5500.00 );
INSERT INTO tb_funcionarios(nome, dataAdmissao, ativo, salario)
VALUES ("Marcos", "2023-05-01", true, 2000.00);
INSERT INTO tb_funcionarios(nome, dataAdmissao, ativo, salario)
VALUES ("Elaine", "2022-02-01", true, 1500.00);
INSERT INTO tb_funcionarios(nome, dataAdmissao, ativo, dataDemissao, salario)
VALUES ("Noemi", "2022-08-01", false, "2023-05-05", 2500.00 );


SELECT * FROM tb_funcionarios where salario > 2000.00; 

SELECT * FROM tb_funcionarios where salario < 2000.00; 

SET SQL_SAFE_UPDATES = 0;

Update tb_funcionarios SET salario = salario * 1.2 WHERE salario <2000.00;

SELECT * FROM tb_funcionarios;


