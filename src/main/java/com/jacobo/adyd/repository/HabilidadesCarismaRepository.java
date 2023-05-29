package com.jacobo.adyd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.HabilidadesCarisma;
@RepositoryRestResource
public interface HabilidadesCarismaRepository extends JpaRepository<HabilidadesCarisma, Integer> {
	
	public Optional<HabilidadesCarisma> findById(@Param(value="puntuacionBase")Integer puntuacionBase);

}
