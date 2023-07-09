package com.jacobo.adyd.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.jacobo.adyd.auth.JwtFilter;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	

	@Autowired
	private JwtFilter jwtFilter;

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		
		http.sessionManagement((session) -> {
			session.sessionCreationPolicy(SessionCreationPolicy.STATELESS);
		});
		http.csrf((csrf) -> {
			csrf.disable();
		});
		http.authorizeHttpRequests(
				(authorizeHttpRequests) -> 
						authorizeHttpRequests
						.requestMatchers(HttpMethod.POST, "/login").permitAll()
						.requestMatchers(HttpMethod.GET, "/login").permitAll()
						.requestMatchers(HttpMethod.OPTIONS, "/login").permitAll()
						.requestMatchers(HttpMethod.OPTIONS, "/login/create").permitAll()
						.requestMatchers(HttpMethod.OPTIONS, "/**").permitAll()
						.requestMatchers(HttpMethod.POST, "/login/create").permitAll()
						.requestMatchers(HttpMethod.GET, "/alineamientos").authenticated()
						.requestMatchers(HttpMethod.GET, "/habilidades*/**").authenticated()
						.requestMatchers(HttpMethod.GET, "/categorias/**").authenticated()
						.requestMatchers(HttpMethod.GET, "/razas/**").authenticated()
						.requestMatchers(HttpMethod.GET, "/alineamientoes/**").authenticated()
						.requestMatchers(HttpMethod.GET, "/tiradaSalvacions/**").authenticated()
						.requestMatchers(HttpMethod.GET, "/categoriaEspeciales/**").authenticated()
						.requestMatchers(HttpMethod.POST, "/personaje").authenticated()
						.requestMatchers(HttpMethod.GET, "/habilidadesLadron/**").authenticated()
						.requestMatchers(HttpMethod.GET, "/modificadoresLadron/**").authenticated()
						.requestMatchers(HttpMethod.GET, "/pericias/**").authenticated()
						.requestMatchers(HttpMethod.GET, "/periciasNoArmas/**").authenticated()
		);
		http.addFilterBefore(jwtFilter, UsernamePasswordAuthenticationFilter.class);
		return http.build();

	}

}
