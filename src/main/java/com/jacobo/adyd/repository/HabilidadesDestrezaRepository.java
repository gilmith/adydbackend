package com.jacobo.adyd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.HabilidadesDestreza;

@RepositoryRestResource
public interface HabilidadesDestrezaRepository extends JpaRepository<HabilidadesDestreza, Integer>{
	
	public Optional<HabilidadesDestreza> findById(@Param(value = "puntuacionBase") Integer puntuacionBase);

}
