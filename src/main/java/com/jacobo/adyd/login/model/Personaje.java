package com.jacobo.adyd.login.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Personaje {
	
		private Integer nivel;
		private String alineamiento;
		private Integer fuerza;
		private Integer destreza;
		private Integer inteligencia;
		private Integer constitucion;
		private Integer carisma;
		private Integer sabiduria;
		private Integer categoriaId;
		private Integer razaId;		
		

}
