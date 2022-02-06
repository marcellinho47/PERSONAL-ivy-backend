USE ivy;

CREATE TABLE ivy.tipos_endereco (

	cod_tipo_endereco INT auto_increment NOT NULL,
	descricao varchar(30) NOT NULL,

	CONSTRAINT tipos_endereco_PK PRIMARY KEY (cod_tipo_endereco),
	CONSTRAINT tipos_endereco_UN UNIQUE KEY (descricao)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

INSERT INTO
	tipos_endereco  
VALUES 
	(1, 'Cobrança'),
	(2, 'Entrega');