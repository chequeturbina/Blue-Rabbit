package com.brabbit.springboot.app.models.service;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.NivelEducativo;

@Repository
public class NivelEducativoDaoImplement implements InterfaceNivelEducativoDao {

	@PersistenceContext
	private EntityManager em; 
	
	@Transactional
	@Override
	public void save(NivelEducativo nivelEducativo) {
		// TODO Auto-generated method stub

	}


	@SuppressWarnings("unchecked")
	@Transactional(readOnly=true)
	@Override
	public List<NivelEducativo> findAll() {
		List niveles = null;
		Query query = em.createQuery("from NivelEducativo");
	    niveles= query.getResultList();
	    return niveles;
	}

	
	public NivelEducativo findOne(long id) {
		return em.find(NivelEducativo.class, id);
	}


	
	
	
}
