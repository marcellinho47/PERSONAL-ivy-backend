USE ivy;

CREATE TABLE ivy.categorias (

	cod_categoria INT auto_increment NOT NULL,
	descricao varchar(30) NOT NULL,

	CONSTRAINT categorias_PK PRIMARY KEY (cod_categoria),
	CONSTRAINT categorias_UN UNIQUE KEY (descricao)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


INSERT INTO 
	categorias 
VALUES 
	(1, 'Brinco'),
	(2, 'Tornozeleira'),
	(3, 'Colar'),
	(4, 'Bracelete'),
	(5, 'Pulseira'),
	(6, 'Anel'),
	(7, 'Berloque');