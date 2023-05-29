package com.jacobo.adyd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.Descripciones;


@RepositoryRestResource
public interface DescripcionRepository  extends JpaRepository<Descripciones, Long> {
	public List<Descripciones> findAll();
}
