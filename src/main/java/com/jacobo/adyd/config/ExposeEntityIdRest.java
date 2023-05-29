package com.jacobo.adyd.config;

import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import com.jacobo.adyd.entities.Alineamiento;
import com.jacobo.adyd.entities.Categoria;
import com.jacobo.adyd.entities.HabilidadesCarisma;
import com.jacobo.adyd.entities.HabilidadesConstitucion;
import com.jacobo.adyd.entities.HabilidadesDestreza;
import com.jacobo.adyd.entities.HabilidadesFuerza;
import com.jacobo.adyd.entities.HabilidadesInteligencia;
import com.jacobo.adyd.entities.HabilidadesSabiduria;
import com.jacobo.adyd.entities.Raza;
import com.jacobo.adyd.entities.TiradaSalvacion;

@Component
public class ExposeEntityIdRest implements RepositoryRestConfigurer {

	@Override
	public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
		config.exposeIdsFor(HabilidadesFuerza.class);
		config.exposeIdsFor(HabilidadesDestreza.class);
		config.exposeIdsFor(HabilidadesConstitucion.class);
		config.exposeIdsFor(HabilidadesInteligencia.class);
		config.exposeIdsFor(HabilidadesSabiduria.class);
		config.exposeIdsFor(HabilidadesCarisma.class);
		config.exposeIdsFor(Categoria.class);
		config.exposeIdsFor(Raza.class);
		config.exposeIdsFor(Alineamiento.class);
		config.exposeIdsFor(TiradaSalvacion.class);		
		config.setDefaultMediaType(MediaType.APPLICATION_JSON);

	}
}
