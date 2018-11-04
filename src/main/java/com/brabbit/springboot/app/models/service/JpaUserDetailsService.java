package com.brabbit.springboot.app.models.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.brabbit.springboot.app.models.dao.IUsuarioDao;
import com.brabbit.springboot.app.models.entity.Role;
import com.brabbit.springboot.app.models.entity.Persona;

@Service("jpaUserDetailsService")
public class JpaUserDetailsService implements UserDetailsService {

	@Autowired
	private IUsuarioDao usuarioDao;

	private Logger logger = LoggerFactory.getLogger(JpaUserDetailsService.class);

	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		Persona persona = usuarioDao.findByUsername(username);

		if (persona == null) {
			logger.error("Error en el Login: no existe el usuario '" + username + "' en el sistema!");
			throw new UsernameNotFoundException("Username: " + username + " no existe en el sistema!");
		}

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		for (Role role : persona.getRoles()) {
			logger.info("Role: ".concat(role.getRoles()));
			authorities.add(new SimpleGrantedAuthority(role.getRoles()));
		}

		if (authorities.isEmpty()) {
			logger.error("Error en el Login: Usuario '" + username + "' no tiene roles asignados!");
			throw new UsernameNotFoundException(
					"Error en el Login: usuario '" + username + "' no tiene roles asignados!");
		}

		return new User(persona.getUsername(), persona.getPassword(), persona.getEnabled(), true, true, true,
				authorities);
	}
	
}
