package com.jacobo.adyd.entities;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name="pericias_categoria")
public class PericiasCategoria {
	
	@EmbeddedId
    private PericiasCategoriaId id;

    @ManyToOne
    @MapsId("idCategoria")
    @JoinColumn(name = "id_categoria")
    private Categoria categoria;

    @ManyToOne
    @MapsId("idPericia")
    @JoinColumn(name = "id_pericia")
    private PericiasArmas periciaArma;
}
