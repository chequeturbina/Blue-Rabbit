package com.brabbit.springboot.app.controllers;

import java.security.Principal;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.Curso;
import com.brabbit.springboot.app.models.entity.Denuncia;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.entity.Profesor;
import com.brabbit.springboot.app.models.entity.Role;
import com.brabbit.springboot.app.models.service.AlumnoDaoImplement;

import com.brabbit.springboot.app.models.service.CursoDaoImplement;

import com.brabbit.springboot.app.models.service.DenunciaDaoImplement;

import com.brabbit.springboot.app.models.service.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.service.PersonaDaoImplement;
import com.brabbit.springboot.app.models.service.ProfesorDaoImplement;
import com.brabbit.springboot.app.models.service.RoleDaoImplement;



@Controller
public class AlumnoController {

	protected final Log logger = LogFactory.getLog(this.getClass());
	
	@Autowired
	private PersonaDaoImplement personDao;
	
	@Autowired
	private ProfesorDaoImplement profesorDao;

	@Autowired
	private AlumnoDaoImplement alumNoDao;

	@Autowired
	private RoleDaoImplement roleDao;

	@Autowired
	private NivelEducativoDaoImplement nivelEduDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private CursoDaoImplement cursoDao;
	
	@Autowired
	private DenunciaDaoImplement denunciaDao;

	
	@RequestMapping("/alumno")
	public String Alumno(Model model, Authentication authentication, Principal principal) {
		
		if(authentication != null) {
			logger.info("Hola ".concat(authentication.getName()));
		}
		
		
		
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		Alumno nivelid = alumNoDao.porId(validar.getId());
		NivelEducativo id = nivelid.getID_NIVEL();
		model.addAttribute("nombre", validar.getNombre());
		model.addAttribute("username", validar.getUsername());
		model.addAttribute("apellido", validar.getApellido());
		model.addAttribute("nivel",id.getNIVEL());
		

		System.out.println("******************************************************************");
		System.out.println(validar.getNombre()+" NOMBRE");
		System.out.println("******************************************************************");
		Alumno alumno = alumNoDao.porId(validar.getId());
		System.out.println("******************************************************************");
		System.out.println(alumno.getID_ALUMNO());
        List<Curso> cursos = alumno.getCursos();
        
        List<Profesor> ids = profesorDao.findAll();
        
        
        
    	for(Curso element : cursos) {
			  System.out.println(element. getTITULO());	
			}
    	
    	List<Persona> clientes = personDao.findAll();
    	model.addAttribute("clientees",ids);
        model.addAttribute("cursos", cursos);
		
		return "student";
	}

	@RequestMapping(value = "/registro/alumno", method = RequestMethod.POST)
	public String formularioPersona(@RequestParam("nombre") String nombre, @RequestParam("apellido") String apellido,
			@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("nivelEdu") long nivel,
			@RequestParam("ConfirmPass") String confirm, Model model,
			@RequestParam(value = "error", required = false) String error, 
			RedirectAttributes ra,
			@RequestParam(value = "registro", required = false) String registro) {
		
		Persona persona = new Persona();
		
		
		persona.setUsername(username);
		Persona validar = personDao.porCorreo(username);

		/* No importara ahorita la verificacion del correo, hasta depsues */
		if (password.contentEquals(confirm)  & (validar == null) ) {

			Alumno alumno = new Alumno();
			Role role = new Role();
			role.setRoles("ROLE_ALUMNO");
			roleDao.save(role);
			persona.setPassword(passwordEncoder.encode(password));
			persona.setNombre(nombre);
			persona.setApellido(apellido);
			persona.setEnabled(true);
			
			
			persona.addRole(role);
			
			System.out.println("******************" + persona.getId());
			System.out.println("******************PERSONA CREADA");
			System.out.println(persona.getId());

			
			personDao.save(persona);
			NivelEducativo niv = nivelEduDao.findOne(nivel);
			alumno.setID_NIVEL(niv);

			System.out.println(niv.getNIVEL() + "Si lo logro");
			alumNoDao.save(alumno);
			System.out.println(persona.getId());

			
			model.addAttribute("registro", "Registro Exitoso!!");
			return "login";
		} else {
			ra.addFlashAttribute("error", "Contraseña no coincide o el Correo no es valido");
			return "redirect:/registroA";
		}

	}

	
	@RequestMapping(value = "/denunciar/alumno")
	public String creaDenuncia(@RequestParam("denunciado")String denunciado,
			                   @RequestParam("problema")String problema,
			                   RedirectAttributes ra,
			                   Model model) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName();
		Persona persona = personDao.porNombre(name);
		
		Denuncia denuncia = new Denuncia();
		denuncia.setDenunciado(denunciado);
		Persona validar = personDao.porCorreo(denunciado);
		
		if (validar == null) {
			
			ra.addFlashAttribute("error", "El usuario a denunciar no existe!");
			return "redirect:/alumno";
			
		}else {
			
			
			denuncia.setProblema(problema);
			
			denuncia.setDenunciante(persona.getUsername());
			
			denunciaDao.save(denuncia);
			
			ra.addFlashAttribute("success", "Tu Denuncia se ha hecho con exito!");
			return"redirect:/alumno";
			
		}
		
	}
	
	@RequestMapping("/alumno/cursos")

	public String cursos(Model model, Authentication authentication, Principal principal) {
         List<Curso> Cursos= cursoDao.listarCursosT();
		
		for(Curso element : Cursos) {
			  System.out.println(element. getTITULO());
			  System.out.println(element.getPROFESOR());
			}
		
		if(authentication != null) {
			logger.info("Hola ".concat(authentication.getName()));
		}
		
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		model.addAttribute("username", validar.getUsername());
		
		
		model.addAttribute("cursos", Cursos);
		return "CursosDisponibles";
	}

	@RequestMapping("/alumno/vercursos/{id}")
	public String cursoss(@PathVariable(value = "id") Long id,Model model,
			              Authentication authentication, Principal principal) {
        Curso curso= cursoDao.findById(id);
        String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		model.addAttribute("username", validar.getUsername());
		model.addAttribute("curso", curso);
		return "curso";
	}
	
	@RequestMapping("/alumno/comprar/{id}")
	public String comprar(@PathVariable(value = "id") Long id,Model model,RedirectAttributes ra) {
		

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName();
		Persona persona = personDao.porNombre(name);

		System.out.println("******************************************************************");
		System.out.println(persona.getNombre()+" NOMBRE");
		System.out.println("******************************************************************");
		Alumno alumno = alumNoDao.porId(persona.getId());
		System.out.println("******************************************************************");
		System.out.println(alumno.getID_ALUMNO());
        Curso curso= cursoDao.findById(id);
        System.out.println(curso.getTITULO());		
        alumno.getCursos().add(curso);
        alumNoDao.save(alumno);
        ra.addFlashAttribute("success", "Felicidades! Has comprado un curso");
		return "redirect:/alumno";
	}
	
	
	
}
