package com.brabbit.springboot.app.models.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NamedQuery;
import javax.persistence.NonUniqueResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.PersistenceUnit;
import javax.persistence.TypedQuery;
import java.io.IOException;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Persona;

@Repository
@EntityScan("com.brabbit.springboot.app.models.entity")
public class PersonaDaoImplement implements InterfacePersonaDao {

	@PersistenceContext
	private EntityManager em;

	@Transactional(readOnly = true)
	@Override
	public List<Persona> findAll() {
		// TODO Auto-generated method stub
		// return em.createQuery("from Persona").getResultList();
		return null;
	}

	@Override
	@Transactional
	public void save(Persona persona) {
		// TODO Auto-generated method stub
		em.persist(persona);
	}

	public Persona porCorreo(String correo) {
		List<Persona> results = em.createQuery("SELECT w FROM Persona w WHERE w.username = :correo", Persona.class)
				.setParameter("correo", correo).getResultList();
		return results.isEmpty() ? null : results.get(0);
	}

}
