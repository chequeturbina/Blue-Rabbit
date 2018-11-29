package com.brabbit.springboot.app.controllers;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brabbit.springboot.app.models.dao.IUsuarioDao;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.service.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.service.PersonaDaoImplement;
import com.brabbit.springboot.app.models.service.ProfesorDaoImplement;
import com.brabbit.springboot.app.models.entity.Profesor;
import java.security.Principal;
//AQUI SE DEFINIRAN LAS RUTAS HACIA LAS VISTAS.
@Controller

public class RutasController {

	protected final Log logger = LogFactory.getLog(this.getClass());
	
	@Autowired
	private PersonaDaoImplement personDao;
	
	@Autowired
	private NivelEducativoDaoImplement nivelEduDao;
	
	@Autowired
	private ProfesorDaoImplement profesorDao;

	@GetMapping("/")
	public String inicio(Model model,Authentication authentication,
			HttpServletRequest request) {
		if(authentication != null) {
			logger.info("Hola usuario autenticado, tu username es: ".concat(authentication.getName()));
			String username = authentication.getName();
			Persona validar = personDao.porNombre(username);
			model.addAttribute("nombre", validar.getNombre());
		}
		
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return "index";
	}

	// Cargar la pagina de inicio de sesion desde index y cualquier ruta disponible
	// para iniciar sesion
	@RequestMapping("/loginpage")
	public String Loginpage(Model model) {
		return "login";
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


	@GetMapping("/alerta")
	public String alertusuario(Model model) {
		return "ConfirmStudent";		
	}
	
	

}
