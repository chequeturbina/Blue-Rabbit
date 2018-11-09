package com.brabbit.springboot.app.models.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Horario;


@Repository
@EntityScan("com.brabbit.springboot.app.models.entity")
public class HorarioDaoImplement implements InterfaceHorarioDao {

	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	@Override
	public void save(Horario horario) {
		// TODO Auto-generated method stub
		em.persist(horario);
	}

}
