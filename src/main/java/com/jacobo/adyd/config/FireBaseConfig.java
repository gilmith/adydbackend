package com.jacobo.adyd.config;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ResourceLoader;
import org.springframework.util.ResourceUtils;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

import lombok.extern.slf4j.Slf4j;

@Configuration
@Slf4j
public class FireBaseConfig {
	
    private ResourceLoader resourceLoader;

	
	@Bean(name="firebase", destroyMethod = "delete")
	public FirebaseApp initDataBase() {
		try {
			File file = ResourceUtils.getFile("classpath:google.json");
			FirebaseOptions options = new FirebaseOptions.Builder()
					.setCredentials(GoogleCredentials.fromStream(new FileInputStream(file)))
					.build();
			return FirebaseApp.initializeApp(options);
		} catch (IOException e) {
			log.error("error al conectar con google");
		}
		return null;
		
	}

}
