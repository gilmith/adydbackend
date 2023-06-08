package com.jacobo.adyd.config;

import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.RepresentationModelProcessor;
import org.springframework.stereotype.Component;

import com.jacobo.adyd.entities.TiradaSalvacion;

@Component
public class RemoveLinks implements RepresentationModelProcessor<EntityModel<TiradaSalvacion>>{

	    @Override
	    public EntityModel<TiradaSalvacion> process(EntityModel<TiradaSalvacion> model) {
	        return EntityModel.of(model.getContent());
	    }

	}

