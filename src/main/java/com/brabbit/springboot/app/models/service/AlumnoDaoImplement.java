package com.brabbit.springboot.app.models.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.entity.Profesor;

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
	
public Alumno porId(long id) {
		
		List<Alumno> results = em.createQuery("SELECT w FROM Alumno w WHERE w.ID_PERSONA= "+id, Alumno.class)
				.getResultList();
		System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
		return results.isEmpty() ? null : results.get(0);
	}

public Alumno porId2(long id) {
	
	List<Alumno> results = em.createQuery("SELECT w FROM Alumno w WHERE w.ID_ALUMNO= "+id, Alumno.class)
			.getResultList();
	System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
	return results.isEmpty() ? null : results.get(0);
}

	public List<Alumno> findAll() {
		List<Alumno> clientes = em.createQuery("SELECT e FROM Alumno e", Alumno.class).getResultList();
		return clientes;
	}

}
