package com.brabbit.springboot.app.models.dao;

import java.util.List;

import com.brabbit.springboot.app.models.entity.NivelEducativo;

public interface InterfaceNivelEducativoDao {

		public void save(NivelEducativo nivelEducativo);
		
		public List<NivelEducativo> findAll();
}
