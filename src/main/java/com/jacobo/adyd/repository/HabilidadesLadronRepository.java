package com.jacobo.adyd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.HabilidadesLadron;
import java.util.List;


@RepositoryRestResource(path = "habilidadesLadron")
public interface HabilidadesLadronRepository extends JpaRepository<HabilidadesLadron, Long> {
	
	public List<HabilidadesLadron> findByRazaId(@Param(value = "idRaza") Long idRaza);

}
