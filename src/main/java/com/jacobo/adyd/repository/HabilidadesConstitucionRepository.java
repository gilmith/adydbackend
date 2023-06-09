package com.jacobo.adyd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.HabilidadesConstitucion;

@RepositoryRestResource
public interface HabilidadesConstitucionRepository extends JpaRepository<HabilidadesConstitucion, Integer> {

	public Optional<HabilidadesConstitucion> findById(@Param(value="puntuacionBase") Integer puntuacionBase);
	
}
