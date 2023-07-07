package com.jacobo.adyd.personaje.api;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import com.google.firebase.FirebaseApp;
import com.google.firebase.cloud.FirestoreClient;
import com.jacobo.adyd.login.model.Confirm;
import com.jacobo.adyd.personaje.model.Personaje;

import jakarta.validation.Valid;
import lombok.val;

@RestController
public class PersonajeApiController implements PersonajeApi {
	
	@Autowired
	@Qualifier(value = "firebase")
	private FirebaseApp firestore;

	@Override
	public ResponseEntity<Confirm> createPersonaje(@Valid Personaje personaje) {
		var firestoreClient = FirestoreClient.getFirestore(firestore);
		val futuro = firestoreClient.collection("Personajes").document(UUID.randomUUID().toString()).set(personaje);
		futuro.isDone();
		return null;
	}

}
