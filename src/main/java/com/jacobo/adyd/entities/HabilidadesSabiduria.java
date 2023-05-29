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
public class HabilidadesSabiduria {
	
	@Id
	@Column(nullable = false, updatable = false, length = 8, name = "PUNTUACIONBASE")
	private Integer puntuacionBase;
	
	@Column(name="DEFENSA")
	private Integer defensa;
	
	@Column(name="BONUSCONJUROS")
	private Integer bonusConjuros;
	
	@Column(name="FRACASOCONJURO")
	private Integer fracasoConjuro;
	

}
