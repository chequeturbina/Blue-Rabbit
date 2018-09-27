package com.brabbit.springboot.app.models.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Alumno;

@Repository
public class AlumnoDaoImplement implements InterfaceAlumnoDao {

	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	@Transactional
	public void save(Alumno alumno) {
		// TODO Auto-generated method stub
		em.persist(alumno);
	}

}
