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
public class HabilidadesConstitucion {
	
	@Id
	@Column(nullable = false, updatable = false, name = "PUNTUACIONBASE")
	private Integer puntuacionBase;

	@Column(name = "AJUSTEGOLPE")
	private Integer ajusteGolpe;

	@Column(name = "COLAPSO")
	private Integer colapso;

	@Column(name = "RESURRECCION")
	private Integer resurreccion;
	
	@Column(name = "RESISTENCIAVENENO")
	private Integer resistenciaVeneno;
	
	@Column(name = "REGENERACION")
	private String regeneracion;

}
