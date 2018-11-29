package com.brabbit.springboot.app.models.service;

import java.util.List;

import com.brabbit.springboot.app.models.entity.Curso;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.entity.Profesor;

public interface InterfaceCursoDao {
	
	public void save(Curso curso);
	
	public List<Curso> listarCursos(Profesor RFC);
}
