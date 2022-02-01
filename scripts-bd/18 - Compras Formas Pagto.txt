CREATE TABLE ivy.compras_formas_pagto (

	cod_compra_forma_pagto INT auto_increment NOT NULL,
	cod_compra INT NOT NULL,
	cod_forma_pagto INT NOT NULL,

	valor_total DOUBLE NOT NULL,
	valor_pago DOUBLE NOT NULL,
	qtd_parcelas INT NOT NULL,

	CONSTRAINT compras_formas_pagto_PK PRIMARY KEY (cod_compra_forma_pagto),
	CONSTRAINT compras_formas_pagto_UN UNIQUE KEY (cod_compra,cod_forma_pagto),
	CONSTRAINT compras_formas_pagto_FK FOREIGN KEY (cod_compra) REFERENCES ivy.compras(cod_compra),
	CONSTRAINT compras_formas_pagto_FK_1 FOREIGN KEY (cod_forma_pagto) REFERENCES ivy.formas_pagto(cod_forma_pagto)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
