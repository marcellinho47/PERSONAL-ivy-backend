USE ivy;

CREATE TABLE ivy.enderecos (

	cod_endereco INT auto_increment NOT NULL,
	cod_municipio INT NOT NULL,
	cod_tipo_logradouro INT NOT NULL,

	logradouro varchar(100) NOT NULL,
	numero INT NULL,
	complemento varchar(100) NULL,
	bairro varchar(60) NOT NULL,

	cep varchar(8) NULL,

	CONSTRAINT enderecos_PK PRIMARY KEY (cod_endereco),
	CONSTRAINT enderecos_FK FOREIGN KEY (cod_tipo_logradouro) REFERENCES ivy.tipos_logradouro(cod_tipo_logradouro),
	CONSTRAINT enderecos_FK1 FOREIGN KEY (cod_municipio) REFERENCES ivy.municipios(cod_municipio)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
