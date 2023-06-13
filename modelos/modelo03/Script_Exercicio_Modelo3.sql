Solução dos exercícios:

1) Ver script DDL

2)
ALTER TABLE CARTAO ADD COLUMN ATIVO BOOLEAN NULL;

3) Ver script DML

4)
UPDATE CLIENTE SET NUMERO = NULL WHERE EMAIL = 'joao@email.com';
DELETE FROM CARTAO WHERE NUMERO = ?; //colocar o número correto


5)
UPDATE CARTAO SET QTD_COPIAS = 5 WHERE CATEGORIA = 'Ação' AND ANO_LANCAMENTO > 2015;

6)
INSERT INTO Aluga (email, etiqueta, data_saida, data_devolucao) VALUES ('joao@email.com',  123, '01-06-2023', '03-06-2023');
INSERT INTO Aluga (email, etiqueta, data_saida, data_devolucao) VALUES ('jonas@email.com', 456, '02-06-2023', '05-06-2023');
INSERT INTO Aluga (email, etiqueta, data_saida, data_devolucao) VALUES ('julio@email.com', 789, '03-06-2023', NULL);

7)
opção 1: INSERT INTO Aluga (email, etiqueta, data_saida, data_devolucao) VALUES ('julio@email.com', 789, '03-06-2023', NULL);

opção 2: INSERT INTO Aluga (email, etiqueta, data_saida, data_devolucao) VALUES (NULL, 123, '03-06-2023', NULL);

8)
a) SELECT EMAIL, DATA_SAIDA FROM ALUGA WHERE ETIQUETA = 1;
b) SELECT ETIQUETA FROM ALUGA WHERE EMAIL = 'joao@email.com';
c) SELECT NOME, TELEFONE FROM CLIENTE WHERE NUMERO IS NULL;
d) SELECT NOME, EMAIL FROM CLIENTE WHERE EMAIL LIKE '%@gmail.com';
e) SELECT NUMERO FROM CARTAO WHERE STATUS = 'B' AND CREDITOS > 0;
f) SELECT ETIQUETA, DATA_SAIDA FROM ALUGA WHERE DATA_DEVOLUCAO IS NULL;
g) SELECT EMAIL FROM ALUGA WHERE DATA_DEVOLUCAO IS NULL;


9)
DELETE FROM CARTAO WHERE NUMERO = 2;
DELETE FROM LIVRO WHERE ETIQUETA = 33;


