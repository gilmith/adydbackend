package com.jacobo.adyd.entities;

import java.io.Serializable;

import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Embeddable
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TiradaSalvacionId implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int nivel;

    @ManyToOne
    @JoinColumn(name = "id_categoria")
    private Categoria categoria;

}
