package com.brabbit.springboot.app.models.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
		// TODO Auto-generated method stub
		return em.createQuery("from NivelEducativo").getResultList();
	}

}
