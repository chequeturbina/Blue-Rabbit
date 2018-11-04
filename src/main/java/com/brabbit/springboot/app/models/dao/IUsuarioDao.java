package com.brabbit.springboot.app.models.dao;

import org.springframework.data.repository.CrudRepository;

import com.brabbit.springboot.app.models.entity.Persona;

public interface IUsuarioDao extends CrudRepository<Persona, Long>{

	public Persona findByUsername(String username);
	
	
}
