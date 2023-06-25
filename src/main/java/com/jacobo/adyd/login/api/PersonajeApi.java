package com.jacobo.adyd.login.api;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.jacobo.adyd.login.model.Confirm;
import com.jacobo.adyd.login.model.Personaje;

import jakarta.validation.Valid;

@Validated
public interface PersonajeApi {
	
	@PostMapping(path="personaje", consumes=MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Confirm> createPersonaje(@Valid @RequestBody Personaje personaje);

}
