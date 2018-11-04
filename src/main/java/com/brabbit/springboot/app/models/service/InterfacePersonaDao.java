package com.brabbit.springboot.app.models.service;

import java.util.List;

import org.jboss.logging.Param;
import org.springframework.data.jpa.repository.Query;

import com.brabbit.springboot.app.models.entity.Persona;

public interface InterfacePersonaDao {

	public List<Persona> findAll();

	public void save(Persona persona);

}
