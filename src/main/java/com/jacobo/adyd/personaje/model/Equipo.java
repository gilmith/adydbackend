package com.jacobo.adyd.personaje.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@Builder
@NoArgsConstructor
public class Equipo {
    private String nombre;
    private String tipo;
    private String dano;
    private Long ajusteDano;
    private Long categoriaArmadura;

}
