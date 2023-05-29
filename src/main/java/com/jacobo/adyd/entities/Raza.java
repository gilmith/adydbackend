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
@NamedQuery(name = "Raza.findRaza", query = "SELECT R from Raza R where R.minimoFuerza <= :fuerza and R.minimoDestreza <= :destreza"
		+ " and R.minimoConstitucion <= :constitucion and R.minimoInteligencia <= :inteligencia "
		+ " and R.minimoSabiduria <= :sabiduria and R.minimoCarisma <= :carisma" )
@Table(name="Razas")
@AllArgsConstructor
@Builder
@NoArgsConstructor
@Data
public class Raza extends MapperSuper{

	
	@Id
	@SequenceGenerator(name = "seq_razas", allocationSize = 1, initialValue = 1 )
	@Column(name="ID", insertable = false, updatable = false)
	private Long id;
	

	
}
