package com.brabbit.springboot.app.models.service;

import java.util.List;

import com.brabbit.springboot.app.models.entity.NivelEducativo;

public interface InterfaceNivelEducativoDao {

	public void save(NivelEducativo nivelEducativo);

	public List<NivelEducativo> findAll();

	public NivelEducativo findOne(long id);

}
