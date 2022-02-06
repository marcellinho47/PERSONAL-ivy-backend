CREATE TABLE ivy.compras_enderecos (

	cod_compra_endereco INT auto_increment NOT NULL,
	cod_compra INT NOT NULL,
	cod_endereco INT NOT NULL,
	cod_tipo_endereco INT NOT NULL,

	CONSTRAINT compras_enderecos_PK PRIMARY KEY (cod_compra_endereco),
	CONSTRAINT compras_enderecos_UN UNIQUE KEY (cod_compra,cod_endereco,cod_tipo_endereco),
	CONSTRAINT compras_enderecos_FK FOREIGN KEY (cod_compra) REFERENCES ivy.compras(cod_compra),
	CONSTRAINT compras_enderecos_FK_1 FOREIGN KEY (cod_endereco) REFERENCES ivy.enderecos(cod_endereco),
	CONSTRAINT compras_enderecos_FK_2 FOREIGN KEY (cod_tipo_endereco) REFERENCES ivy.tipos_endereco(cod_tipo_endereco)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
