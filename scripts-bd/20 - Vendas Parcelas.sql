CREATE TABLE ivy.vendas_parcelas (

	cod_venda_parcela INT auto_increment NOT NULL,
	cod_venda_forma_pagto INT NOT NULL,

	parcela INT NOT NULL,
	valor DOUBLE NOT NULL,
	is_quitado BOOL DEFAULT FALSE NOT NULL,

	CONSTRAINT vendas_parcelas_PK PRIMARY KEY (cod_venda_parcela),
	CONSTRAINT vendas_parcelas_UN UNIQUE KEY (cod_venda_forma_pagto,parcela),
	CONSTRAINT vendas_parcelas_FK FOREIGN KEY (cod_venda_forma_pagto) REFERENCES ivy.vendas_formas_pagto(cod_venda_forma_pagto)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
