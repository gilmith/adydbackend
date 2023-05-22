package com.jacobo.adyd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.HabilidadesFuerza;

@RepositoryRestResource
public interface HabilidadesFuerzaRepository extends JpaRepository<HabilidadesFuerza, String> {
	
	public Optional<HabilidadesFuerza> findById(@Param(value = "puntuacionBase") String puntuacionBase);

}
