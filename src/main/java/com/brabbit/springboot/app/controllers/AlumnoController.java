package com.brabbit.springboot.app.controllers;

import java.util.Date;
import java.util.List;

import javax.persistence.Access;

import org.apache.commons.logging.Log;
import org.apache.logging.log4j.spi.LoggerContextFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.brabbit.springboot.app.models.dao.AlumnoDaoImplement;
import com.brabbit.springboot.app.models.dao.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.dao.PersonaDaoImplement;
import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;

@Controller
public class AlumnoController {
	
	 @Autowired	
		private PersonaDaoImplement personDao;
	 
	 @Autowired
	 	private AlumnoDaoImplement alumNoDao;
	 
	 @Autowired
	 	private NivelEducativoDaoImplement nivelEduDao;
	
	
	@RequestMapping(value = "/registro/alumno", method = RequestMethod.POST)
	 public String formularioPersona(@RequestParam("nombre") String nombre,
			 @RequestParam("apellido") String apellido,
			 @RequestParam("correo") String correo,
			 @RequestParam("password") String password,
			 @RequestParam("nivelEdu") long nivel, 
			 @RequestParam("Fecha_nacimiento")@DateTimeFormat(pattern = "yyyy-MM-dd") Date Fecha_nacimiento,
			 @RequestParam("ConfirmPass") String confirm,
			 Model model) 		 
	{
	
		if(password.contentEquals(confirm)) {
			Persona persona = new Persona();
			Alumno alumno = new Alumno();
			persona.setNOMBRE(nombre);
			persona.setAPELLIDO(apellido);
			persona.setCORREO(correo);
			persona.setPASSWORD(password);
			persona.setFECHA_NACIMIENTO(Fecha_nacimiento);
			System.out.println("******************"+persona.getID_PERSONA());
			System.out.println("******************PERSONA CREADA");
			System.out.println(persona.getID_PERSONA());	
			personDao.save(persona);
			NivelEducativo niv = nivelEduDao.findOne(nivel);
			alumno.setID_NIVEL(niv);

			System.out.println(niv.getNIVEL()+"Si lo logro");
			alumNoDao.save(alumno);
			System.out.println(persona.getID_PERSONA());
			
			String alerta = "Exito al registrar se te enviara un correo";
			model.addAttribute("Confirm",alerta);
		} else {
			String alerta = "Contraseña no coincide tendras que llenar de nuevo el formulario";
			model.addAttribute("Confirm",alerta);
	 }
		return "ConfirmStudent";
	}
	
}
