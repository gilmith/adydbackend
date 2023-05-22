package com.jacobo.adyd.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class HabilidadesDestreza {

	@Id
	@Column(nullable = false, updatable = false, name = "PUNTUACIONBASE")
	private Integer puntuacionBase;

	@Column(name = "REACCION")
	private Integer reaccion;

	@Column(name = "PROYECTIL")
	private Integer proyectil;

	@Column(name = "DEFENSA")
	private Integer defensa;

}
