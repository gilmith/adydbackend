package com.jacobo.adyd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.Categoria;


@RepositoryRestResource
public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
	
	public List<Categoria> findMinimo(@Param(value = "fuerza")Integer fuerza,
			@Param(value = "destreza")Integer destreza,
			@Param(value = "constitucion")Integer constitucion,
			@Param(value = "inteligencia")Integer inteligencia,
			@Param(value = "sabiduria")Integer sabiduria,
			@Param(value = "carisma")Integer carisma			
			);

}
