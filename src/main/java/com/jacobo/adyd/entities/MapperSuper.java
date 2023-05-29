package com.jacobo.adyd.entities;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@MappedSuperclass
@Data
@AllArgsConstructor
@NoArgsConstructor
public abstract class MapperSuper {
	
	@Column(name="NOMBRE")
	private String nombre;
		
	@Column(name="MINIMO_FUERZA")
	private Integer minimoFuerza;
	
	@Column(name="MINIMO_DESTREZA")
	private Integer minimoDestreza;
	
	@Column(name="MINIMO_CONSTITUCION")
	private Integer minimoConstitucion;
	
	@Column(name = "MINIMO_INTELIGENCIA")
	private Integer minimoInteligencia;
	
	@Column(name ="MINIMO_SABIDURIA")
	private Integer minimoSabiduria;
	
	@Column(name="MINIMO_CARISMA")
	private Integer minimoCarisma;
	

}
