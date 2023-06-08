package com.jacobo.adyd.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.jacobo.adyd.entities.UserTable;
import com.jacobo.adyd.login.model.UserRecord;
import com.jacobo.adyd.repository.UserTableRepository;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private UserTableRepository repo;
    private static BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@Override
	public Boolean isValid(UserRecord usuario) {
		repo.findById(usuario.usuario()).map(user -> {
			return passwordEncoder.matches(usuario.password(), user.getPassword());
		});
		return false;
	}

	@Override
	public void createuser(UserRecord usuario) {
		repo.save(UserTable.builder()
				.user(usuario.usuario())
				.password(passwordEncoder.encode(usuario.password()))
				.enabled(true).build());
		
	}

	@Override
	public String checkMail(String mail) {
		return repo.findById(mail).map(it -> {
			return it.getUser();	
		}).orElse(null);
	}

}

