package com.brabbit.springboot.app.models.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Profesor;

@Repository
@EntityScan("com.brabbit.springboot.app.models.entity")
public class ProfesorDaoImplement implements InterfaceProfesorDao {

	@PersistenceContext
	private EntityManager em;
	
	@Transactional(readOnly=true)
	@Override
	public List<Profesor> findAll() {
		// TODO Auto-generated method stub
		return null;
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

}
