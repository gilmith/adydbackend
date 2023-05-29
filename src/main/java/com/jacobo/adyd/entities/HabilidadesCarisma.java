package com.jacobo.adyd.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class HabilidadesCarisma {
	
	@Id
	@Column(nullable = false, updatable = false, length = 8, name = "PUNTUACIONBASE")
	private Integer puntuacionBase;
	
	@Column(name="MAXSEGUIDORES")
	private Integer maxseguidores;
	
	@Column(name="LEALTAD")
	private Integer lealtad;
	
	@Column(name="REACCION")
	private Integer reaccion;
}
