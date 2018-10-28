package com.brabbit.springboot.app.models.service;

import java.util.List;

import com.brabbit.springboot.app.models.entity.Profesor;

public interface InterfaceProfesorDao {
	public List<Profesor > findAll();
	
	public void save(Profesor profesor);

	public Profesor porCorreo(String profesor);
}
