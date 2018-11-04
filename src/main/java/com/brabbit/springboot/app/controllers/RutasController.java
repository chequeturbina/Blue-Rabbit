package com.brabbit.springboot.app.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.service.NivelEducativoDaoImplement;

//AQUI SE DEFINIRAN LAS RUTAS HACIA LAS VISTAS.
@Controller

public class RutasController {

	@Autowired
	private NivelEducativoDaoImplement nivelEduDao;

	@GetMapping("/")
	public String inicio(Model model) {
		return "index";
	}

	// Cargar la pagina de inicio de sesion desde index y cualquier ruta disponible
	// para iniciar sesion
	@RequestMapping("/loginpage")
	public String Loginpage(Model model) {
		return "login";
	}

	@RequestMapping("/profesor")
	public String Profesor(Model model) {
		return "teacher";
	}

	@RequestMapping("/student")
	public String Alumno(Model model) {
		List<NivelEducativo> um = nivelEduDao.findAll();
		model.addAttribute("niveles", um);
		return "student";
	}

	@GetMapping("/registroP")
	public String RegistroProfesor(Model model) {
		return "regestryTeacher";
	}

	@RequestMapping("/registroA")
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
	
	@RequestMapping("/crearCurso")
	public String CrearCurso(Model model) {
		return "createCourse";		
	} 
	

}
