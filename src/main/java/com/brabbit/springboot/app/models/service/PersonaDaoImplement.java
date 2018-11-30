package com.brabbit.springboot.app.models.service;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.dao.IUsuarioDao;
import com.brabbit.springboot.app.models.entity.Persona;

@Repository
@EntityScan("com.brabbit.springboot.app.models.entity")
public class PersonaDaoImplement implements InterfacePersonaDao {

	@PersistenceContext
	private EntityManager em;
	
	@Autowired
	private IUsuarioDao usuarioDao;

	//METODO PARA LISTAR A LOS USUARIOS
	@Transactional(readOnly = true)
	@Override
	public List<Persona> findAll() {
		List<Persona> clientes = em.createQuery("SELECT e FROM Persona e", Persona.class).getResultList();
		return clientes;
	}
	
	//METODO PARA ELIMINAR
	@Override
	@Transactional
	public void delete(Long id) {
		
		usuarioDao.deleteById(id);
	}
	
	@Override
	@Transactional(readOnly = true)
	public Persona findOne(Long id) {
		return usuarioDao.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public void save(Persona persona) {
		// TODO Auto-generated method stub
		em.persist(persona);
	}

	public Persona porCorreo(String username) {
		List<Persona> results = em.createQuery("SELECT w FROM Persona w WHERE w.username = :username", Persona.class)
				.setParameter("username", username).getResultList();
		return results.isEmpty() ? null : results.get(0);
	}
	
	public Persona porNombre(String username) {
		List<Persona> results = em.createQuery("SELECT w FROM Persona w WHERE w.username = :username", Persona.class)
				.setParameter("username", username).getResultList();
		System.out.println(results);
		return results.isEmpty() ? null : results.get(0);
	}
	
	public Persona findPersona(String username) {
		  Object obj = em.createNativeQuery("SELECT * FROM Persona WHERE USERNAME = " + username).getSingleResult();
		    Persona user = (Persona)obj;
		    return user;        
	}
	
	
}
