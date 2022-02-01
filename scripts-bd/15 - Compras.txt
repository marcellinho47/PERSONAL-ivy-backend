CREATE TABLE ivy.compras (

	cod_compra INT auto_increment NOT NULL,

	loja varchar(50) NOT NULL,
	site varchar(50) NULL,

	data_compra DATE NOT NULL,
	data_previsao_chegada DATE NULL,
	data_chegada DATE NOT NULL,

	codigo_rastreio varchar(20) NULL,
	cod_tipo_entrega INT NOT NULL,

	valor_total DOUBLE NOT NULL,
	valor_desconto DOUBLE NULL,
	valor_frete DOUBLE NULL,

	observacao TEXT NULL,

	operador_inclusao INT NOT NULL,
	data_inclusao DATETIME DEFAULT NOW() NOT NULL,
	operador_exclusao INT NULL,
	data_exclusao DATETIME NULL,


	CONSTRAINT compras_PK PRIMARY KEY (cod_compra),
	CONSTRAINT compras_FK FOREIGN KEY (cod_tipo_entrega) REFERENCES ivy.tipos_entrega(cod_tipo_entrega),
	CONSTRAINT compras_FK_1 FOREIGN KEY (operador_inclusao) REFERENCES ivy.seg_operadores(cod_operador),
	CONSTRAINT compras_FK_2 FOREIGN KEY (operador_exclusao) REFERENCES ivy.seg_operadores(cod_operador)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
