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
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class HabilidadesFuerza {

	@Id
	@Column(nullable = false, updatable = false, length = 8, name = "PUNTUACIONBASE")
	private String puntuacionBase;

	@Column(name = "PROBIMPACTO")
	private Integer probimpacto;

	@Column(name = "AJUSTEDANO")
	private Integer ajusteDano;

	@Column(name = "PESOTRANSPOR")
	private Double pesoTranspor;

	@Column(name = "PESOMAXIMO")
	private Double pesoMaximo;

	@Column(length = 10, name = "ABRIRPUERTAS")
	private String abrirPuertas;

	@Column(name = "DOBLARBARRAS")
	private Integer doblarBarras;

}
