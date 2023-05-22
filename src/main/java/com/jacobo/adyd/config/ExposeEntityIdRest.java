package com.jacobo.adyd.config;

import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import com.jacobo.adyd.entities.HabilidadesDestreza;
import com.jacobo.adyd.entities.HabilidadesFuerza;

@Component
public class ExposeEntityIdRest implements RepositoryRestConfigurer {
	
	 @Override
	    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
	        config.exposeIdsFor(HabilidadesFuerza.class);
	        config.exposeIdsFor(HabilidadesDestreza.class);
	    }
}
