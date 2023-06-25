package com.jacobo.adyd.entities;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="MODIFICADORES_LADRON")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class ModificacionesLadron {
	
	@Id
	@Column(name = "puntuacion_destreza", updatable = false, insertable = false)
	private Long puntuacionDestreza;
	
	@Column(name="vaciar_bolsillos")
	private Long vaciarBolsillos;
	
	@Column(name="abrir_cerraduras")
	private Long abrirCerraduras;
	
	@Column(name="hallar_retirar_trampas")
	private Long hallarRetirarTrampas;
	
	@Column(name="moverse_en_silencio")
	private Long moverseEnSilencio;
	
	@Column(name="ocultase_en_las_sombras")
	private Long ocultarseEnLasSombras;
	
	
	

}
