package com.brabbit.springboot.app.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.brabbit.springboot.app.models.dao.AlumnoDaoImplement;
import com.brabbit.springboot.app.models.dao.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.dao.PersonaDaoImplement;
import com.brabbit.springboot.app.models.dao.ProfesorDaoImplement;
import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.entity.Profesor;

import java.io.*;

import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
@Controller
public class ProfesorController {
	 @Autowired	
		private ProfesorDaoImplement profesorDao;
	 
	 @Autowired
	 	private PersonaDaoImplement personDao;
	 
	
	
	@RequestMapping(value = "/registro/profesor", method = RequestMethod.POST)
	 public String formularioPersona(@RequestParam("cv") MultipartFile cv,
			 @RequestParam("ine") MultipartFile ine,
			 @RequestParam("name") String nombre,
			 @RequestParam("lastname") String apellido,
			 @RequestParam("rfc") String rfc,
			 @RequestParam("curp") String curp,
			 @RequestParam("correo") String correo,
			 @RequestParam("password") String password,
			 @RequestParam("ConfirmPass") String confirm,
			 @RequestParam("Fecha_nacimiento")@DateTimeFormat(pattern = "yyyy-MM-dd") Date Fecha_nacimiento,
			 ModelMap modelMap) 		 
	 {
		/*
		Persona persona = new Persona();
		persona.setCORREO(correo);
		persona.setNOMBRE(nombre); 
		persona.setAPELLIDO(apellido);
		persona.setPASSWORD(password);
		persona.setFECHA_NACIMIENTO(Fecha_nacimiento);
		personDao.save(persona);
		
		Profesor profesor = new Profesor();
		profesor.setCURP(curp);
		profesor.setRFC(rfc);
		profesor.setID_PERSONA(persona);
		try {
			profesor.setINE(ine.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			profesor.setCV(cv.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		profesorDao.save(profesor);
		/*Persona persona = new Persona();
		boolean validoC = false;
		 ValidarCorreo vc = new ValidarCorreo();
		 persona.setCORREO(correo);
		 validoC = vc.validar(correo);
		 Persona validar = personDao.porCorreo(correo);
	
		if(password.contentEquals(confirm) & (validoC & validar == null)) {
			
			Profesor profesor = new Profesor();
			persona.setNOMBRE(nombre); 
			persona.setAPELLIDO(apellido);
			persona.setPASSWORD(password);
			persona.setFECHA_NACIMIENTO(Fecha_nacimiento);
			System.out.println("******************"+persona.getID_PERSONA());
			System.out.println("******************PERSONA CREADA");
			System.out.println(persona.getID_PERSONA());
			
			personDao.save(persona);
			
			profesor.setCURP(curp);
			profesor.setRFC(rfc);

			System.out.println(niv.getNIVEL()+"Si lo logro");
			alumNoDao.save(alumno);
			System.out.println(persona.getID_PERSONA());
			
			String alerta = "Exito al registrar se te enviara un correo";
			ra.addAttribute("Confirm",alerta);
		} else {
			String alerta = "Los Datos no coinciden, verificar por favor";
			ra.addAttribute("Confirm",alerta);
	 }
		return "ConfirmStudent";
	}
	
	@RequestMapping("/alert/ConfirmStudent")
	public String RegistroAlumno(Model model) {
		return "ConfirmStudent";
	}*/
		modelMap.addAttribute("ine", ine);
	    modelMap.addAttribute("cv", cv);
		return "mostrando";
	}
	
	
	@RequestMapping(value = "/nuevo/curso", method = RequestMethod.POST)
	 public String crearCurso(@RequestParam MultiValueMap<String, String> parameters) {
		 final Iterator<Entry<String, List<String>>> it = parameters.entrySet().iterator();
		 
		 while(it.hasNext()) {
		        final String k = it.next().getKey();
		        System.out.println(k);
		        System.out.println(it.next().getValue());
		        final List<String> values = it.next().getValue();
		    }
		 
		return "index";
	}
	
	
}
