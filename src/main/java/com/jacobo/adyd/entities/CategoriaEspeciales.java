package com.jacobo.adyd.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity(name="CATEGORIA_ESPECIALES")
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CategoriaEspeciales {
	
	@Id
	@SequenceGenerator(name ="seq_categoria_especiales", allocationSize = 1, initialValue = 1)
	@Column(name="ID")
	private Long id;
	
    @ManyToOne
    @JoinColumn(name = "id_categoria")
	private Categoria categoria;
	
	@Column(name="DESCRIPCION")
	private String descripcionString;
}
