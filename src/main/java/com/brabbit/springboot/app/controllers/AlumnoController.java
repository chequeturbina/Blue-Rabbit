package com.brabbit.springboot.app.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Access;
import javax.persistence.EntityManager;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.logging.log4j.spi.LoggerContextFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.entity.Role;
import com.brabbit.springboot.app.models.service.AlumnoDaoImplement;
import com.brabbit.springboot.app.models.service.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.service.PersonaDaoImplement;
import com.brabbit.springboot.app.models.service.RoleDaoImplement;

import java.security.Principal;


@Controller
public class AlumnoController {

	protected final Log logger = LogFactory.getLog(this.getClass());
	
	@Autowired
	private PersonaDaoImplement personDao;

	@Autowired
	private AlumnoDaoImplement alumNoDao;

	@Autowired
	private RoleDaoImplement roleDao;

	@Autowired
	private NivelEducativoDaoImplement nivelEduDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/alumno")
	public String Alumno(Model model, Authentication authentication, Principal principal) {
		
		if(authentication != null) {
			logger.info("Hola ".concat(authentication.getName()));
		}
		
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		
		return "student";
	}

	@RequestMapping(value = "/registro/alumno", method = RequestMethod.POST)
	public String formularioPersona(@RequestParam("nombre") String nombre, @RequestParam("apellido") String apellido,
			@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("nivelEdu") long nivel,
			/*@RequestParam("Fecha_nacimiento") @DateTimeFormat(pattern = "yyyy-MM-dd") Date Fecha_nacimiento,*/
			@RequestParam("ConfirmPass") String confirm, Model model,
			@RequestParam(value = "error", required = false) String error, 
			RedirectAttributes ra,
			@RequestParam(value = "registro", required = false) String registro) {
		
		Persona persona = new Persona();
		boolean validoC = false;
		ValidarCorreo vc = new ValidarCorreo();
		persona.setUsername(username);
		validoC = vc.validar(username);
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
			
			//persona.setfNacimiento(Fecha_nacimiento);
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

	@RequestMapping("/alerta")
	public String RegistroAlumno(Model model) {
		return "ConfirmStudent";
	}
	
	
}
