package com.brabbit.springboot.app.models.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Alumno;

@Repository
public class ProfesorDaoImplement implements InterfaceProfesorDao{

	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	@Transactional
	public void save(Profesor profesor) {
		// TODO Auto-generated method stub
		em.persist(profesor);
	}

}
