package com.brabbit.springboot.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

//AQUI SE DEFINIRAN LAS RUTAS HACIA LAS VISTAS.
@Controller

public class RutasController {
	
	@GetMapping("/")
	public String inicio(Model model) {
		return "index";		
	}
	
	@GetMapping("registro/profesor")
	public String RegistroAlumno(Model model) {
		return "regestryTeacher";		
	}
	
	@GetMapping("registro/alumno")
	public String RegistroProfesor(Model model) {
		return "resgestryStudent";
	}
	
}
