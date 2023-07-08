package com.jacobo.adyd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.PericiasNoArmas;

@RepositoryRestResource(path="periciasNoArmas")
public interface PericiasNoArmasRepository extends JpaRepository<PericiasNoArmas, Long> {
	
	List<PericiasNoArmas> findByIdCategoriaCustom(Integer idCategoria);

}
