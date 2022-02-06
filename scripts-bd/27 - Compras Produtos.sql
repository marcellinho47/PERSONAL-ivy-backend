CREATE TABLE ivy.compras_produtos (

	cod_compra_produto INT auto_increment NOT NULL,
	cod_compra INT NOT NULL,
	cod_produto INT NOT NULL,

	quantidade INT NOT NULL,
	valor_unitario DOUBLE NOT NULL,
	valor_desconto DOUBLE NULL,

	CONSTRAINT compras_produtos_PK PRIMARY KEY (cod_compra_produto),
	CONSTRAINT compras_produtos_UN UNIQUE KEY (cod_compra,cod_produto),
	CONSTRAINT compras_produtos_FK FOREIGN KEY (cod_compra) REFERENCES ivy.compras(cod_compra),
	CONSTRAINT compras_produtos_FK_1 FOREIGN KEY (cod_produto) REFERENCES ivy.produtos(cod_produto)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
