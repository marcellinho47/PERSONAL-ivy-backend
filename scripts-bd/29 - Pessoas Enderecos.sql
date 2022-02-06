CREATE TABLE ivy.pessoas_enderecos (

	cod_pessoa_endereco INT auto_increment NOT NULL,
	cod_pessoa INT NOT NULL,
	cod_endereco INT NOT NULL,
	cod_tipo_endereco INT NOT NULL,

	CONSTRAINT pessoas_enderecos_PK PRIMARY KEY (cod_pessoa_endereco),
	CONSTRAINT pessoas_enderecos_UN UNIQUE KEY (cod_pessoa,cod_endereco,cod_tipo_endereco),
	CONSTRAINT pessoas_enderecos_FK FOREIGN KEY (cod_pessoa) REFERENCES ivy.pessoas(cod_pessoa),
	CONSTRAINT pessoas_enderecos_FK_1 FOREIGN KEY (cod_endereco) REFERENCES ivy.enderecos(cod_endereco),
	CONSTRAINT pessoas_enderecos_FK_2 FOREIGN KEY (cod_tipo_endereco) REFERENCES ivy.tipos_endereco(cod_tipo_endereco)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
