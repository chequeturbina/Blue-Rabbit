package com.brabbit.springboot.app.models.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Persona;

@Repository
public class PersonaDaoImplement implements InterfacePersonaDao {

	@PersistenceContext
	private EntityManager em;
	
	@Transactional(readOnly=true)
	@Override
	public List<Persona> findAll() {
		// TODO Auto-generated method stub
		//return em.createQuery("from Persona").getResultList();
		return null;
	}

	@Override
	@Transactional
	public void save(Persona persona) {
		// TODO Auto-generated method stub
		em.persist(persona);
	}

}
