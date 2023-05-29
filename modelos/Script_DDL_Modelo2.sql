
CREATE TABLE Aluno (
  email VARCHAR(50) NOT NULL,
  nome VARCHAR(60) NOT NULL,
  telefone NUMERIC(13) NOT NULL,
  CONSTRAINT aluno_pk PRIMARY KEY (email)
);

CREATE TABLE Professor (
  registro INTEGER NOT NULL,
  nome VARCHAR(60) NOT NULL,
  telefone NUMERIC(13) NOT NULL,
  CONSTRAINT professor_pk PRIMARY KEY (registro)
);

CREATE TABLE Curso (
  codigo VARCHAR(5) NOT NULL,
  nome VARCHAR(50) NOT NULL,
  tipo VARCHAR(10) NOT NULL,
  preco REAL NOT NULL,
  duracao INTEGER NOT NULL,
  CONSTRAINT curso_pk PRIMARY KEY (codigo)
);

CREATE TABLE Cursa (
  email VARCHAR(50) NOT NULL,
  codigo VARCHAR(5) NOT NULL,
  data_inicio DATE NOT NULL,
  CONSTRAINT cursa_pk PRIMARY KEY (email, codigo)
);

CREATE TABLE Leciona (
  registro INTEGER NOT NULL,
  codigo VARCHAR(5) NOT NULL,
  CONSTRAINT leciona_pk PRIMARY KEY (registro, codigo)
);

#FKs
ALTER TABLE Cursa ADD CONSTRAINT aluno_cursa_fk FOREIGN KEY (email) REFERENCES Aluno (email);
ALTER TABLE Leciona ADD CONSTRAINT professor_leciona_fk FOREIGN KEY (registro) REFERENCES Professor (registro);
ALTER TABLE Leciona ADD CONSTRAINT curso_leciona_fk FOREIGN KEY (codigo) REFERENCES Curso (codigo);
ALTER TABLE Cursa ADD CONSTRAINT curso_cursa_fk FOREIGN KEY (codigo) REFERENCES Curso (codigo);

