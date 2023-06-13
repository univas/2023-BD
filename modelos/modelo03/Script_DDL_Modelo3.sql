
CREATE TABLE Cartao (
  numero INTEGER NOT NULL,
  status VARCHAR(15) NOT NULL,
  creditos INTEGER NOT NULL,
  CONSTRAINT cartao_pk PRIMARY KEY (numero)
);

CREATE TABLE Cliente (
  email VARCHAR(50) NOT NULL,
  nome VARCHAR(50) NOT NULL,
  telefone VARCHAR(15) NOT NULL,
  endereco VARCHAR(100) NOT NULL,
  numero INTEGER,
  CONSTRAINT cliente_pk PRIMARY KEY (email)
);

CREATE TABLE Autor (
  cpf NUMERIC NOT NULL,
  nome VARCHAR(50) NOT NULL,
  cidade VARCHAR(40) NOT NULL,
  data_nascimento DATE NOT NULL,
  qtd_livros INTEGER NOT NULL,
  CONSTRAINT autor_pk PRIMARY KEY (cpf)
);

CREATE TABLE Livro (
  etiqueta INTEGER NOT NULL,
  titulo VARCHAR(50) NOT NULL,
  categoria VARCHAR(50) NOT NULL,
  ano_lancamento INTEGER NOT NULL,
  qtd_copias INTEGER NOT NULL,
  CONSTRAINT livro_pk PRIMARY KEY (etiqueta)
);

CREATE TABLE Aluga (
  email VARCHAR(50) NOT NULL,
  etiqueta INTEGER NOT NULL,
  data_saida DATE NOT NULL,
  data_devolucao DATE,
  CONSTRAINT aluga_pk PRIMARY KEY (email, etiqueta, data_saida)
);

CREATE TABLE Escreve (
  cpf NUMERIC NOT NULL,
  etiqueta INTEGER NOT NULL,
  CONSTRAINT escreve_pk PRIMARY KEY (cpf, etiqueta)
);

ALTER TABLE Cliente ADD CONSTRAINT cartao_cliente_fk FOREIGN KEY (numero) REFERENCES Cartao (numero);
ALTER TABLE Aluga ADD CONSTRAINT cliente_aluga_fk FOREIGN KEY (email) REFERENCES Cliente (email);
ALTER TABLE Escreve ADD CONSTRAINT autor_escreve_fk FOREIGN KEY (cpf) REFERENCES Autor (cpf);
ALTER TABLE Escreve ADD CONSTRAINT livro_escreve_fk FOREIGN KEY (etiqueta) REFERENCES Livro (etiqueta);
ALTER TABLE Aluga ADD CONSTRAINT livro_aluga_fk FOREIGN KEY (etiqueta) REFERENCES Livro (etiqueta);
