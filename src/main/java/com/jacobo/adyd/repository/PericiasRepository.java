package com.jacobo.adyd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.jacobo.adyd.entities.PericiasArmas;

@RepositoryRestResource
public interface PericiasRepository extends JpaRepository<PericiasArmas, Long>{

}
