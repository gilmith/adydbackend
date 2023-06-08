package com.jacobo.adyd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jacobo.adyd.entities.UserTable;

public interface UserTableRepository extends JpaRepository<UserTable, String> {
	

}
