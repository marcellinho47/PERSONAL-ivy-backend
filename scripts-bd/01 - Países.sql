USE ivy;

CREATE TABLE ivy.paises (

	cod_pais INT auto_increment NOT NULL,
	nome varchar(40) NOT NULL,

	CONSTRAINT paises_PK PRIMARY KEY (cod_pais),
	CONSTRAINT paises_UN UNIQUE KEY (nome)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


INSERT INTO 
	Paises (nome)
VALUES 
	('Brasil');