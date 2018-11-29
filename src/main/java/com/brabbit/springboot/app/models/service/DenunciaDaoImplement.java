package com.brabbit.springboot.app.models.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Denuncia;
import com.brabbit.springboot.app.models.entity.Persona;


@Repository
@EntityScan("com.brabbit.springboot.app.models.entity")
public class DenunciaDaoImplement implements InterfaceDenunciaDao {

	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	@Override
	public void save(Denuncia denuncia) {
		// TODO Auto-generated method stub
		em.persist(denuncia);
	}
	
	//METODO PARA LISTAR A LAS DENUNCIAS
	@Transactional(readOnly = true)
	@Override
	public List<Denuncia> findAll() {
		List<Denuncia> denuncias = em.createQuery("SELECT e FROM Denuncia e", Denuncia.class).getResultList();
		return denuncias;
	}
	
}