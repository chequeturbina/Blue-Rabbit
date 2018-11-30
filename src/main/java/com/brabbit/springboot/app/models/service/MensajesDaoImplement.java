package com.brabbit.springboot.app.models.service;

import com.brabbit.springboot.app.models.entity.Mensajes;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Profesor;

@Repository
public class MensajesDaoImplement implements InterfaceMensajesDao {


	@PersistenceContext
	private EntityManager em;
	
	@Override
	@Transactional
	public void save(Mensajes mensaje) {
		em.persist(mensaje);
		
	}

}
