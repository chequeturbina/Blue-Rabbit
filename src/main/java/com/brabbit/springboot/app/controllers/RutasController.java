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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brabbit.springboot.app.models.dao.IUsuarioDao;
import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.Curso;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.service.CursoDaoImplement;
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
	
	@Autowired
	private CursoDaoImplement cursoDao;

	@GetMapping("/")
	public String inicio(Model model,Authentication authentication,
			HttpServletRequest request) {
		
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

	

	@RequestMapping("/cursosVisitante")

	public String cursosDisponibles(Model model) {
         List<Curso> Cursos= cursoDao.listarCursosT();
		
		for(Curso element : Cursos) {
			  System.out.println(element. getTITULO());
			  System.out.println(element.getPROFESOR());
			}
		model.addAttribute("cursos", Cursos);
		return "cursosVisitante";
	}
	
	@RequestMapping("/comprarVisitante/{id}")
	public String comprarVisitante(@PathVariable(value = "id") Long id,Model model) {
		

        Curso curso= cursoDao.findById(id);
        model.addAttribute("curso", curso);		
       
		return "comprarVisitante";
	}
	
	
	@RequestMapping("/profesor/MisCursos")
	public String MisCursos(Model model) {
		return "miscursos";		
	} 


}
