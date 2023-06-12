package com.jacobo.adyd.entities;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "tirada_salvacion")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@NamedQuery(name = "TiradaSalvacion.findByCategoriaNivel", 
query = "SELECT ts FROM TiradaSalvacion ts WHERE ts.id.nivel = :nivel AND ts.id.categoria.id = :idCategoria")
public class TiradaSalvacion {

    @EmbeddedId
    private TiradaSalvacionId id;
    @Column(name="paralizacion_veneno_muerte_magica")
    private Integer paralizacionVenenoMuerteMagica;
    @Column(name="cetro_vara_varita ")
    private Integer cetroVaraVarita;
    @Column(name="petrificacion_polimorfismo ")
    private Integer petrificacionPolimorfismo;
    @Column(name="arma_aliento ")
    private Integer armaAliento;
    @Column(name="conjuro ")
    private Integer conjuro;

}
