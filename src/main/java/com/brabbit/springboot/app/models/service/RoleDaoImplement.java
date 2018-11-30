package com.brabbit.springboot.app.models.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.entity.Persona;
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
	
public Role porRolAlumno(String rol) {
	List<Role> results = em.createQuery("SELECT w FROM Role w WHERE w.rol = :rol", Role.class)
			.setParameter("rol", rol).getResultList();
	return (Role) results;
		
	}

}
