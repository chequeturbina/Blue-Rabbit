package com.brabbit.springboot.app.models.service;
import java.util.List;

import com.brabbit.springboot.app.models.entity.Persona;

public interface InterfacePersonaDao {
	
	public List<Persona> findAll();
	
	public void save(Persona persona);

	
}
