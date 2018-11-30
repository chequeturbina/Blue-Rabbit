package com.brabbit.springboot.app.models.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
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
    	 List<Alumno> results = em.createQuery("SELECT w FROM Alumno w WHERE w.ID_ALUMNO = "+id, Alumno.class)
 				.getResultList();
 		System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
 		System.out.println(results);
 		return results.isEmpty() ? null : results.get(0);
	}

}
