package com.jacobo.adyd.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "PERICIAS_NO_ARMAS")
@NamedQuery(name = "PericiasNoArmas.findByIdCategoriaCustom", query = "SELECT PNA FROM PericiasNoArmas PNA WHERE PNA.idCategoria = :idCategoria OR PNA.idCategoria = 0")
public class PericiasNoArmas {
	
	@Id
	@SequenceGenerator(name = "seq_pericias_no_armas", allocationSize = 1, initialValue = 1 )
	@Column(name="ID", insertable = false, updatable = false)
	private Long id;
	
	@Column(name="NOMBRE")
	private String nombre;
	
	@Column(name="CASILLAS_REQUERIDAS")
	private Integer casillas;
	
	@Column(name="HABILIDAD")
	private String habilidad;
	
	
	@Column(name="MODIFICADOR")
	private Integer modificador;
	
	@Column(name="ID_CATEGORIA")
	private Integer idCategoria;
}
