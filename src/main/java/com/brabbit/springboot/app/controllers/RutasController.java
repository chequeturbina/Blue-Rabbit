package com.brabbit.springboot.app.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brabbit.springboot.app.models.dao.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.entity.NivelEducativo;

//AQUI SE DEFINIRAN LAS RUTAS HACIA LAS VISTAS.
@Controller



public class RutasController {
	
	 @Autowired
	 	private NivelEducativoDaoImplement nivelEduDao;
	 
	@GetMapping("/")
	public String inicio(Model model) {
		return "index";		
	}
	
	@GetMapping("registro/profesor")
	public String RegistroProfesor(Model model) {
		return "regestryTeacher";		
	}
	
	@RequestMapping("registro/alumno")
	public String RegistroAlumno(Model model) {
		List<NivelEducativo> um = nivelEduDao.findAll();
		model.addAttribute("niveles", um);
		return "resgestryStudent";
	}
	
	@RequestMapping("/admin")
	public String Administrador(Model model) {
		List<NivelEducativo> um = nivelEduDao.findAll();
		model.addAttribute("niveles", um);
		return "admin";
	}
	
	@GetMapping("/alerta")
	public String alertusuario(Model model) {
		return "alertusuario";		
	}
	
}
