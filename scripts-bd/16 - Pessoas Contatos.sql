CREATE TABLE ivy.pessoas_contatos (

	cod_pessoa_contato INT auto_increment NOT NULL,
	cod_pessoa INT NOT NULL,
	cod_contato int NOT NULL,

	CONSTRAINT pessoas_contatos_PK PRIMARY KEY (cod_pessoa_contato),
	CONSTRAINT pessoas_contatos_UN UNIQUE KEY (cod_pessoa,cod_contato)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
