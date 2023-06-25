package com.jacobo.adyd.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="HABILIDADES_LADRON")
@Data
@NoArgsConstructor
@AllArgsConstructor
@NamedQuery(name = "HabilidadesLadron.findByRazaId", query = "SELECT HL FROM HabilidadesLadron HL where HL.raza.id= :idRaza")
public class HabilidadesLadron {
	
	@Column(name="ID", insertable = false, updatable = false)
	@Id
	private Long id;

    @ManyToOne
    @JoinColumn(name = "id_raza")
	private Raza raza;
	
	@Column(name="VALOR")
	private Long valor;
	
	@Column(name="NOMBRE")
	private String nombre;
}
