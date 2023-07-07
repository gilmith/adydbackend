package com.jacobo.adyd.entities;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="pericias_armas")
public class PericiasArmas {
	
	@Id
	@Column(name = "ID", insertable = false, updatable = false)
	public Long id;
	
	@Column(name="nombre_pericia")
	public String nombrePericia;
	

}
