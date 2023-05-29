package com.jacobo.adyd.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Descripciones {

	@Id
	@SequenceGenerator(name = "SEQ_DESRIPCIONES", allocationSize = '1')
	@Column(name = "id")
	private Long id;

	@Column(name = "CARACTERISTICA")
	private String caracteristica;

	@Column(name = "DESCRIPCION")
	private String descripcion;

}
