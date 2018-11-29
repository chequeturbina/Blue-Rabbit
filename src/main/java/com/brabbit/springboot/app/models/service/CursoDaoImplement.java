package com.brabbit.springboot.app.models.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Curso;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.entity.Profesor;


@Repository
@EntityScan("com.brabbit.springboot.app.models.entity")
public class CursoDaoImplement implements InterfaceCursoDao {

	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	@Override
	public void save(Curso curso) {
		// TODO Auto-generated method stub
		em.persist(curso);
	}
	
	public List<Curso> listarCursos(Profesor RFC) {
	List<Curso> cursos = em.createQuery("SELECT w FROM Curso w WHERE w.RFC = :RFC",Curso.class).setParameter("RFC",RFC).getResultList(); 
    return cursos; 
	}
	
	public List<Curso> listarCursosT() {
		List<Curso> cursos = em.createQuery("SELECT w FROM Curso",Curso.class).getResultList(); 
	    return cursos; 
	}

}
