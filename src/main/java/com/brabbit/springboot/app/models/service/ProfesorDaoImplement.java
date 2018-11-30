package com.brabbit.springboot.app.models.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.entity.Profesor;

@Repository
@EntityScan("com.brabbit.springboot.app.models.entity")
public class ProfesorDaoImplement implements InterfaceProfesorDao {

	@PersistenceContext
	private EntityManager em;

	@Transactional(readOnly = true)
	@Override
	public List<Profesor> findAll() {
		List<Profesor> clientes = em.createQuery("SELECT e FROM Profesor e", Profesor.class).getResultList();
		return clientes;
	}

	@Transactional
	@Override
	public void save(Profesor profesor) {
		// TODO Auto-generated method stub
		em.persist(profesor);

	}

	@Override
	public Profesor porCorreo(String profesor) {
		// TODO Auto-generated method stub
		return null;
	}

	public Profesor porId(long id) {
		
		List<Profesor> results = em.createQuery("SELECT w FROM Profesor w WHERE w.ID_PERSONA = "+id, Profesor.class)
				.getResultList();
		System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
		System.out.println(results);
		return results.isEmpty() ? null : results.get(0);
	}
	

	
}
