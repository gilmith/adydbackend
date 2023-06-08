package com.jacobo.adyd;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class AdydApplication {

	public static void main(String[] args) {
		SpringApplication.run(AdydApplication.class, args);
	}

	@Bean
	public WebMvcConfigurer corsConfigurer()
	{
	   String[] allowDomains = new String[2];
	   allowDomains[0] = "http://localhost:4200";

	   return new WebMvcConfigurer() {
	      @Override
	      public void addCorsMappings(CorsRegistry registry) {
	         registry.addMapping("/**").allowedOrigins(allowDomains);
	      }
	   };
	}
}
