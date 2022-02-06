package store.ivy.sisivy.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "enderecos")
public class EnderecosEntity implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer codEndereco;
	private Integer codTipoLogradouro;

	/* ====================================================================================== */
	/* CONSTRUCTOR */
	/* ====================================================================================== */
	/* ====================================================================================== */
	/* GETTERS AND SETTERS */
	/* ====================================================================================== */
	/* ====================================================================================== */
	/* HASH CODE AND EQUALS */
	/* ====================================================================================== */
}
