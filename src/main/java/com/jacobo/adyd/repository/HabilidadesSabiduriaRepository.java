package com.jacobo.adyd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.HabilidadesSabiduria;

@RepositoryRestResource
public interface HabilidadesSabiduriaRepository extends JpaRepository<HabilidadesSabiduria, Integer> {
	
	public Optional<HabilidadesSabiduria> findById(@Param(value="puntuacionBase") Integer puntuacionBase);

}
