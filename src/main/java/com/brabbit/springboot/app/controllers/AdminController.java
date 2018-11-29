package com.brabbit.springboot.app.controllers;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.persistence.Query;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.brabbit.springboot.app.models.dao.IUsuarioDao;
import com.brabbit.springboot.app.models.entity.Denuncia;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.service.DenunciaDaoImplement;
import com.brabbit.springboot.app.models.service.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.service.PersonaDaoImplement;
import com.brabbit.springboot.app.models.service.ProfesorDaoImplement;
import com.brabbit.springboot.app.models.entity.Profesor;
import java.security.Principal;

@Controller
public class AdminController {
	
	protected final Log logger = LogFactory.getLog(this.getClass());
	
	@Autowired
	private PersonaDaoImplement personDao;
	
	@Autowired
	private NivelEducativoDaoImplement nivelEduDao;
	
	@Autowired
	private DenunciaDaoImplement denunciaDao;
	
	@RequestMapping("/admin")
	public String Administrador(Model model, Authentication authentication, Principal principal) {
		
		if(authentication != null) {
			logger.info("Hola ".concat(authentication.getName()));
		}
		
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		
		
		return "admin";
	}
	
	@RequestMapping("/eliminarUsuario")
	public String eliminarUsuario(Model model, Authentication authentication, Principal principal) {
		
		if(authentication != null) {
			logger.info("Hola ".concat(authentication.getName()));
		}
		
		List<Persona> clientes = personDao.findAll();
		
		
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		model.addAttribute("clientees",clientes);
		
		
		return "eliminarUsuario";
	}
	
	@RequestMapping(value = "/eliminar/{id}")
	public String eliminar(@PathVariable(value = "id") Long id, RedirectAttributes flash) {

		if (id > 0) {
			Persona cliente = personDao.findOne(id);

			personDao.delete(id);
			flash.addFlashAttribute("success", "Usuario eliminado con éxito!");

		}
		return "redirect:/eliminarUsuario";
	}
	
	@RequestMapping("/verDenuncias")
	public String Denuncias(Model model, Authentication authentication, Principal principal) {
		
		if(authentication != null) {
			logger.info("Hola ".concat(authentication.getName()));
		}
		
		List<Denuncia> denuncias = denunciaDao.findAll();
		
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		
		model.addAttribute("denunciaas",denuncias);
		
		
		return "denuncias";
	}
	
}