package com.brabbit.springboot.app.controllers;

import java.util.Date;
import java.util.List;

import javax.persistence.Access;

import org.apache.commons.logging.Log;
import org.apache.logging.log4j.spi.LoggerContextFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.brabbit.springboot.app.models.dao.AlumnoDaoImplement;
import com.brabbit.springboot.app.models.dao.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.dao.PersonaDaoImplement;
import com.brabbit.springboot.app.models.dao.ProfesorDaoImplement;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;

@Controller
public class ProfesorController {
	
	 @Autowired	
		private ProfesorDaoImplement profesorDao;
	 
	 @Autowired
	 	private ProfesorDaoImplement profeSorDao;
	 

	@RequestMapping(value = "/registro/profesor", method = RequestMethod.POST)
	 public String formularioPersona(@RequestParam("nombre") String nombre,
			 @RequestParam("apellido") String apellido,
			 @RequestParam("correo") String correo,
			 @RequestParam("password") String password,
			 @RequestParam("RFC") String rfc,
			 @RequestParam("CURP") String curp,
			 @RequestParam("Fecha_nacimiento")@DateTimeFormat(pattern = "yyyy-MM-dd") Date Fecha_nacimiento,
			 ModelMap model) 		 
	{
		
	Profesor profesor = new Profesor();
	profesor.setNOMBRE(nombre);
	profesor.setAPELLIDO(apellido);
	profesor.setCORREO(correo);
	profesor.setPASSWORD(password);
	profesor.setFECHA_NACIMIENTO(Fecha_nacimiento);
	System.out.println("******************"+profesor.getID_PERSONA());
	System.out.println("******************PERSONA CREADA");
	System.out.println(profesor.getID_PERSONA());	
	profesorDao.save(profesor);
	
	    return "redirect:/registro/alumno";
	 }
	
}
