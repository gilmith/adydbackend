package com.jacobo.adyd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.CategoriaEspeciales;

@RepositoryRestResource(path = "categoriaEspeciales")
public interface CategoriaEspecialesRepository extends JpaRepository<CategoriaEspeciales, Long> {

	List<CategoriaEspeciales> findByCategoriaById(@Param(value = "idCategoria") Long idCategoria);

}
