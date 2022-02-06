USE ivy;

CREATE TABLE ivy.pessoas (

	cod_pessoa INT auto_increment NOT NULL,
	nome varchar(100) NOT NULL,
	tipo_pessoa TINYINT NOT NULL,
	cpf varchar(11) NULL,
	cnpj varchar(14) NULL,
	sexo TINYINT NOT NULL,
	data_nascimento DATE NULL,

	operador_inclusao INT NOT NULL,
	data_inclusao DATETIME DEFAULT NOW() NOT NULL,
	operador_exclusao INT NULL,
	data_exclusao DATETIME NULL,

	CONSTRAINT pessoas_PK PRIMARY KEY (cod_pessoa),
	CONSTRAINT pessoas_UN UNIQUE KEY (cpf),
	CONSTRAINT pessoas_UN_1 UNIQUE KEY (cnpj),
	CONSTRAINT pessoas_FK FOREIGN KEY (operador_inclusao) REFERENCES ivy.seg_operadores(cod_operador),
	CONSTRAINT pessoas_FK_1 FOREIGN KEY (operador_exclusao) REFERENCES ivy.seg_operadores(cod_operador)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
