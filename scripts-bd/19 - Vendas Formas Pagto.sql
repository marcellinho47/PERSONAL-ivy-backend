CREATE TABLE ivy.vendas_formas_pagto (

	cod_venda_forma_pagto INT auto_increment NOT NULL,
	cod_venda INT NOT NULL,
	cod_forma_pagto INT NOT NULL,

	valor_total DOUBLE NOT NULL,
	valor_pago DOUBLE DEFAULT 0 NOT NULL,
	qtd_parcelas INT DEFAULT 1 NOT NULL,

	CONSTRAINT vendas_forma_pagto_PK PRIMARY KEY (cod_venda_forma_pagto),
	CONSTRAINT vendas_forma_pagto_UN UNIQUE KEY (cod_venda,cod_forma_pagto),
	CONSTRAINT vendas_forma_pagto_FK FOREIGN KEY (cod_venda) REFERENCES ivy.vendas(cod_venda),
	CONSTRAINT vendas_forma_pagto_FK_1 FOREIGN KEY (cod_forma_pagto) REFERENCES ivy.formas_pagto(cod_forma_pagto)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
