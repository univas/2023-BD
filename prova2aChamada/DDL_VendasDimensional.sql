
CREATE TABLE regiao (
    codigo INTEGER NOT NULL,
    nome VARCHAR(30) NOT NULL,
    uf VARCHAR(20) NOT NULL,
    CONSTRAINT regiao_pk PRIMARY KEY (codigo)
);


CREATE TABLE produto (
    codigo INTEGER NOT NULL,
    nome VARCHAR(30) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    CONSTRAINT produto_pk PRIMARY KEY (codigo)
);


CREATE TABLE cliente (
    codigo INTEGER NOT NULL,
    nome VARCHAR(40) NOT NULL,
    email VARCHAR(30) NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (codigo)
);

