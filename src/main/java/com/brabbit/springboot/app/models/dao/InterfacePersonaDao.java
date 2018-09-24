package com.brabbit.springboot.app.models.dao;
import java.util.List;
import com.brabbit.springboot.app.models.entity.Persona;
public interface InterfacePersonaDao {
	
	public List<Persona> findAll();
	
}
