package com.brabbit.springboot.app.controllers;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.logging.log4j.spi.LoggerContextFactory;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.brabbit.springboot.app.models.dao.PersonaDaoImplement;
import com.brabbit.springboot.app.models.entity.Persona;

@Controller
public class AlumnoController {

	
	@RequestMapping(value = "/registro/alumno", method = RequestMethod.POST)
	 public String formularioPersona(@RequestParam("nombre") String nombre,
			 @RequestParam("apellido") String apellido,
			 @RequestParam("correo") String correo,
			 @RequestParam("password") String password,
			 @RequestParam("Fecha_nacimiento")@DateTimeFormat(pattern = "yyyy-MM-dd") Date Fecha_nacimiento)
		
	{
		PersonaDaoImplement p = new PersonaDaoImplement();	
	Persona persona = new Persona();
	persona.setNOMBRE(nombre);
	persona.setAPELLIDO(apellido);
	persona.setCORREO(correo);
	persona.setPASSWORD(password);
	persona.setFECHA_NACIMIENTO(Fecha_nacimiento);
	System.out.println("******************"+persona.getID_PERSONA());
	
	 
		System.out.println("******************PERSONA CREADA");
	 return "index";
	 }
	
}
