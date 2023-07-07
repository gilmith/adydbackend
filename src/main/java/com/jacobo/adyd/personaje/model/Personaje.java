package com.jacobo.adyd.personaje.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Personaje {
	
	private long nivel;
    private String alineamiento;
    private long fuerza;
    private long destreza;
    private long inteligencia;
    private long constitucion;
    private long carisma;
    private long sabiduria;
    private long categoriaID;
    private long razaID;
    private List<Long> conjurosMago;
    private List<Long> conjurosSacerdote;
    private List<Equipo> equipo;
    private long gac0;
    private long categoriaArmadura;
    private String usuario;
    private String nombrePersonaje;
    

		

}
