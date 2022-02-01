CREATE TABLE ivy.compras_parcelas (

	cod_compra_parcela INT auto_increment NOT NULL,
	cod_compra_forma_pagto INT NOT NULL,

	parcela INT NOT NULL,
	valor DOUBLE NOT NULL,
	is_quitado BOOL DEFAULT FALSE NOT NULL,

	CONSTRAINT compras_parcelas_PK PRIMARY KEY (cod_compra_parcela),
	CONSTRAINT compras_parcelas_UN UNIQUE KEY (cod_compra_forma_pagto,parcela),
	CONSTRAINT compras_parcelas_FK FOREIGN KEY (cod_compra_forma_pagto) REFERENCES ivy.compras_formas_pagto(cod_compra_forma_pagto)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
