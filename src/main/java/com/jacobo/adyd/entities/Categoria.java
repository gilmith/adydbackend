package com.jacobo.adyd.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NamedQuery(name = "Categoria.findMinimo", query = "SELECT C from Categoria C where C.minimoFuerza <= :fuerza and C.minimoDestreza <= :destreza"
		+ " and C.minimoConstitucion <= :constitucion and C.minimoInteligencia <= :inteligencia "
		+ " and C.minimoSabiduria <= :sabiduria and C.minimoCarisma <= :carisma" )
@Table(name="Categoria")
@Data
@AllArgsConstructor
@Builder
@NoArgsConstructor
public class Categoria extends MapperSuper{
	
	@Id
	@SequenceGenerator(name = "seq_categoria", allocationSize = 1, initialValue = 1 )
	@Column(name="ID", insertable = false, updatable = false)
	private Long id;
	
	@Column(name="DADO_GOLPE")
	private Integer dadoGolpe;
	
	@Column(name="PUNTOS_PERICIAS")
	private Integer puntosPericias;
	
	@Column(name="PUNTOS_PERICIAS_NO_ARMAS")
	private Integer puntosPericiasNoArmas;
	

	

}
