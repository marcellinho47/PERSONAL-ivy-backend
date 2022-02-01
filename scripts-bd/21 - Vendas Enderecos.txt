CREATE TABLE ivy.vendas_enderecos (

	cod_venda_endereco INT auto_increment NOT NULL,
	cod_venda INT NOT NULL,
	cod_endereco INT NOT NULL,
	cod_tipo_endereco INT NOT NULL,

	CONSTRAINT vendas_enderecos_PK PRIMARY KEY (cod_venda_endereco),
	CONSTRAINT vendas_enderecos_UN UNIQUE KEY (cod_venda,cod_endereco,cod_tipo_endereco),
	CONSTRAINT vendas_enderecos_FK FOREIGN KEY (cod_venda) REFERENCES ivy.vendas(cod_venda),
	CONSTRAINT vendas_enderecos_FK_1 FOREIGN KEY (cod_endereco) REFERENCES ivy.enderecos(cod_endereco),
	CONSTRAINT vendas_enderecos_FK_2 FOREIGN KEY (cod_tipo_endereco) REFERENCES ivy.tipos_endereco(cod_tipo_endereco)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
