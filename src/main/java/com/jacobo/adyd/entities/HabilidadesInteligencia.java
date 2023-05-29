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
public class HabilidadesInteligencia {
	
	@Id
	@Column(nullable = false, updatable = false, length = 8, name = "PUNTUACIONBASE")
	private Integer puntuacionBase;
	
	@Column(name="IDIOMAS")
	private Integer idiomas;
	
	@Column(name="NIVELCONJURO")
	private Integer nivelConjuro;
	
	@Column(name="NUEVOSCONJUROS")
	private Integer nuevosConjuros;
	
	@Column(name="MAXCONJUROS")
	private Integer maxConjuros;
	
	@Column(name="ILUSIONES")
	private Integer ilusiones;
	

}
