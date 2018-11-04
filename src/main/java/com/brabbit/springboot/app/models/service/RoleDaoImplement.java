package com.brabbit.springboot.app.models.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Role;

@Repository
public class RoleDaoImplement implements InterfaceRoleDao {

	@PersistenceContext
	private EntityManager em;

	@Override
	@Transactional
	public void save(Role role) {
		// TODO Auto-generated method stub
		em.persist(role);
	}

}
