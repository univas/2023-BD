
CREATE TABLE Cliente (
  cpf NUMERIC NOT NULL,
  nome VARCHAR(50) NOT NULL,
  uf VARCHAR(2) NOT NULL,
  CONSTRAINT cliente_pk PRIMARY KEY (cpf)
);

CREATE TABLE Pedido (
  codigo INTEGER NOT NULL,
  cpf NUMERIC NOT NULL,
  data DATE NOT NULL,
  status VARCHAR(1) NOT NULL,
  CONSTRAINT pedido_pk PRIMARY KEY (codigo)
);

CREATE TABLE Produto (
  codigo INTEGER NOT NULL,
  nome VARCHAR(50) NOT NULL,
  preco NUMERIC NOT NULL,
  categoria VARCHAR(30) NOT NULL,
  ativo BOOLEAN,
  CONSTRAINT produto_pk PRIMARY KEY (codigo)
);

CREATE TABLE ItemPedido (
  pedido INTEGER NOT NULL,
  produto INTEGER NOT NULL,
  quantidade INTEGER NOT NULL,
  CONSTRAINT itempedido_pk PRIMARY KEY (pedido, produto)
);

ALTER TABLE Pedido     ADD CONSTRAINT cliente_pedido_fk     FOREIGN KEY (cpf)     REFERENCES Cliente (cpf);
ALTER TABLE ItemPedido ADD CONSTRAINT pedido_itempedido_fk  FOREIGN KEY (pedido)  REFERENCES Pedido  (codigo);
ALTER TABLE ItemPedido ADD CONSTRAINT produto_itempedido_fk FOREIGN KEY (produto) REFERENCES Produto (codigo);

