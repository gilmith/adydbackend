package com.jacobo.adyd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.TiradaSalvacion;
import com.jacobo.adyd.entities.TiradaSalvacionId;

@RepositoryRestResource
public interface TiradaSalvacionRepository extends JpaRepository<TiradaSalvacion, TiradaSalvacionId> {

}
