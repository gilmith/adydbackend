package com.jacobo.adyd.config;

import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

@Configuration
public class CORSFilter {


	private final List<String> allowedMethodsAngular = List.of("GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS");

	private final List<String> allowedHeaders = List.of("Origin", "Access-Control-ALLOW-ORIGIN",
			"Content-Type", "ACCEPT", "JWT-TOKEN", "AUTHORIZATION", "ORIGIN, ACCEPT",
			"X-REQUESTED-WITH", "ACCESS-CONTROL-REQUEST-METHOD", "ACCESS-CONTROL-REQUEST-HEADERS");
	
	private final List<String> exposedHeaders = List.of("Origin", "Content-Type", "Accept",
			"Jwt-Token", "Authorization", "Access-Control-Allow-Origin",
			"Access-Control-Allow-Origin", "Access-Control-Allow-Credentials", "File-Name");
	
	@Bean
	public CorsFilter corsFilter() {
		
		final UrlBasedCorsConfigurationSource urlBasedCorsConfigurationSource = new UrlBasedCorsConfigurationSource();

		final CorsConfiguration corsConfiguration = new CorsConfiguration();
		corsConfiguration.setAllowCredentials(true);
		corsConfiguration.setAllowedMethods(this.allowedMethodsAngular);
		corsConfiguration.setAllowedHeaders(this.allowedHeaders);
		corsConfiguration.setExposedHeaders(this.exposedHeaders);
		corsConfiguration.addAllowedOrigin("http://localhost:4200");
		corsConfiguration.addAllowedOrigin("http://129.151.225.83");
		
		urlBasedCorsConfigurationSource.registerCorsConfiguration("/**", corsConfiguration);

		return new CorsFilter(urlBasedCorsConfigurationSource);
	}
		
}