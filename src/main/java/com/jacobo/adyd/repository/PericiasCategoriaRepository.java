package com.jacobo.adyd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.PericiasArmas;
import com.jacobo.adyd.entities.PericiasCategoria;


@RepositoryRestResource(path = "pericias")
public interface PericiasCategoriaRepository extends JpaRepository<PericiasCategoria, Long>{
	
	List<PericiasArmas> findByCategoriaC(Long idCategoria);

}
