package com.jacobo.adyd.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="Alineamiento")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Alineamiento {
	
	@Id
	@SequenceGenerator(name ="seq_alineamiento", allocationSize = 1, initialValue = 1)
	@Column(name="ID")
	private Long id;
	
	@Column(name = "nombre")
	private String nombre;
	
	@Column(name = "descripcion")
	private String descripcion;

}
