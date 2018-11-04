package com.brabbit.springboot.app.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.entity.Profesor;
import com.brabbit.springboot.app.models.entity.Role;
import com.brabbit.springboot.app.models.service.AlumnoDaoImplement;
import com.brabbit.springboot.app.models.service.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.service.PersonaDaoImplement;
import com.brabbit.springboot.app.models.service.ProfesorDaoImplement;
import com.brabbit.springboot.app.models.service.RoleDaoImplement;

import java.io.*;

import java.util.Date;
import java.util.List;
import java.util.Map.Entry;

import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

@Controller
public class ProfesorController {
	@Autowired
	private ProfesorDaoImplement profesorDao;

	@Autowired
	private PersonaDaoImplement personDao;
	
	@Autowired
	private RoleDaoImplement roleDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@RequestMapping(value = "/registro/profesor", method = RequestMethod.POST)
	public String formularioPersona(@RequestParam("cv") MultipartFile cv, @RequestParam("ine") MultipartFile ine,
			@RequestParam("name") String nombre, @RequestParam("lastname") String apellido,
			@RequestParam("rfc") String rfc, @RequestParam("curp") String curp, @RequestParam("correo") String correo,
			@RequestParam("password") String password, @RequestParam("ConfirmPass") String confirm,
			@RequestParam("Fecha_nacimiento") @DateTimeFormat(pattern = "yyyy-MM-dd") Date Fecha_nacimiento,
			ModelMap modelMap, @RequestParam(value = "error", required = false) String error, RedirectAttributes ra) {

		Persona persona = new Persona();
		Role role = new Role();
		role.setRoles("ROLE_PROFESOR");
		roleDao.save(role);

		if (password.contentEquals(confirm) /* & (validoC & validar == null) */) {
			persona.setUsername(correo);
			persona.setNombre(nombre);
			persona.setApellido(apellido);
			persona.setPassword(passwordEncoder.encode(password));
			persona.setfNacimiento(Fecha_nacimiento);
			persona.addRole(role);
			persona.setEnabled(true);
			personDao.save(persona);

			Profesor profesor = new Profesor();
			profesor.setCURP(curp);
			profesor.setRFC(rfc);
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

			modelMap.addAttribute("ine", ine);
			modelMap.addAttribute("cv", cv);
			return "mostrando";
		} else {
			ra.addFlashAttribute("error", "Contraseña no coincide o el Correo no es valido");
			return "redirect:/registroP";

		}
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
		 
		return "redirect:/profesor";
	}
}
