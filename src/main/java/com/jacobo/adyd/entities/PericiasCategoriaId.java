package com.jacobo.adyd.entities;

import java.io.Serializable;

import jakarta.persistence.Embeddable;

@Embeddable
public class PericiasCategoriaId implements Serializable{

	private Long idPericia;
	private Long idCategoria;

}
