package com.jacobo.adyd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.Raza;

@RepositoryRestResource
public interface RazaRepository extends JpaRepository<Raza, Long> {

	
	public List<Raza> findRaza(@Param(value = "fuerza")Integer fuerza,
			@Param(value = "destreza")Integer destreza,
			@Param(value = "constitucion")Integer constitucion,
			@Param(value = "inteligencia")Integer inteligencia,
			@Param(value = "sabiduria")Integer sabiduria,
			@Param(value = "carisma")Integer carisma			
			);
}
