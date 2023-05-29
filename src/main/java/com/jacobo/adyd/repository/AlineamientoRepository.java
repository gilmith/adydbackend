package com.jacobo.adyd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.Alineamiento;

@RepositoryRestResource
public interface AlineamientoRepository extends JpaRepository<Alineamiento, Long> {
	
	public List<Alineamiento> findAll();
}
