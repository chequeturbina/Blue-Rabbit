package com.brabbit.springboot.app.models.service;

import java.util.List;

import com.brabbit.springboot.app.models.entity.Denuncia;

public interface InterfaceDenunciaDao {
	
	public void save(Denuncia denuncia);

	public List<Denuncia> findAll();
}
