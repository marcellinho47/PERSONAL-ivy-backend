USE ivy;

CREATE TABLE ivy.uf (
	cod_uf varchar(2) NOT NULL,
	estado varchar(20) NOT NULL,

	CONSTRAINT uf_PK PRIMARY KEY (cod_uf),
	CONSTRAINT uf_UN UNIQUE KEY (estado)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

INSERT INTO
	uf 
VALUES 
	('AC', 'Acre'),
	('AL', 'Alagoas'),
	('AM', 'Amazonas'),
	('AP', 'Amapá'),
	('BA', 'Bahia'),
	('CE', 'Ceará'),
	('DF', 'Distrito Federal'),
	('ES', 'Espírito Santo'),
	('GO', 'Goiás'),
	('MA', 'Maranhão'),
	('MT', 'Mato Grosso'),
	('MS', 'Mato Grosso do Sul'),
	('MG', 'Minas Gerais'),
	('PA', 'Pará'),
	('PB', 'Paraíba'),
	('PR', 'Paraná'),
	('PE', 'Pernambuco'),
	('PI', 'Piauí'),
	('RJ', 'Rio de Janeiro'),
	('RN', 'Rio Grande do Norte'),
	('RS', 'Rio Grande do Sul'),
	('RO', 'Rondônia'),
	('RR', 'Roraima'),
	('SC', 'Santa Catarina'),
	('SP', 'São Paulo'),
	('SE', 'Sergipe'),
	('TO', 'Tocantins');