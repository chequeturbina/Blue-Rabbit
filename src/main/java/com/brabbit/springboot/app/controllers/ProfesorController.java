package com.brabbit.springboot.app.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.entity.Profesor;
import com.brabbit.springboot.app.models.service.AlumnoDaoImplement;
import com.brabbit.springboot.app.models.service.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.service.PersonaDaoImplement;
import com.brabbit.springboot.app.models.service.ProfesorDaoImplement;

import java.io.*;

import java.util.Date;

@Controller
public class ProfesorController {
	@Autowired
	private ProfesorDaoImplement profesorDao;

	@Autowired
	private PersonaDaoImplement personDao;

	@RequestMapping(value = "/registro/profesor", method = RequestMethod.POST)
	public String formularioPersona(@RequestParam("cv") MultipartFile cv, @RequestParam("ine") MultipartFile ine,
			@RequestParam("name") String nombre, @RequestParam("lastname") String apellido,
			@RequestParam("rfc") String rfc, @RequestParam("curp") String curp, @RequestParam("correo") String correo,
			@RequestParam("password") String password, @RequestParam("ConfirmPass") String confirm,
			@RequestParam("Fecha_nacimiento") @DateTimeFormat(pattern = "yyyy-MM-dd") Date Fecha_nacimiento,
			ModelMap modelMap, @RequestParam(value = "error", required = false) String error, RedirectAttributes ra) {

		Persona persona = new Persona();

		if (password.contentEquals(confirm) /* & (validoC & validar == null) */) {
			persona.setUsername(correo);
			persona.setNombre(nombre);
			persona.setApellido(apellido);
			persona.setPassword(password);
			persona.setfNacimiento(Fecha_nacimiento);
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
}
