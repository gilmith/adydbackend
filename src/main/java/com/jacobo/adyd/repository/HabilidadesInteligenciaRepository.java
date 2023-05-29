package com.jacobo.adyd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.HabilidadesInteligencia;

@RepositoryRestResource
public interface HabilidadesInteligenciaRepository extends JpaRepository<HabilidadesInteligencia, Integer> {
	
	public Optional<HabilidadesInteligencia> findById(@Param(value="puntuacionBase") Integer puntuacionBase);

}
