package com.brabbit.springboot.app.controllers;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

import com.brabbit.springboot.app.models.entity.Alumno;
import com.brabbit.springboot.app.models.entity.Curso;
import com.brabbit.springboot.app.models.entity.Denuncia;
import com.brabbit.springboot.app.models.entity.Mensajes;
import com.brabbit.springboot.app.models.entity.NivelEducativo;
import com.brabbit.springboot.app.models.entity.Persona;
import com.brabbit.springboot.app.models.entity.Profesor;
import com.brabbit.springboot.app.models.entity.Role;
import com.brabbit.springboot.app.models.service.AlumnoDaoImplement;
import com.brabbit.springboot.app.models.service.CursoDaoImplement;
import com.brabbit.springboot.app.models.service.DenunciaDaoImplement;
import com.brabbit.springboot.app.models.service.MensajesDaoImplement;
import com.brabbit.springboot.app.models.service.NivelEducativoDaoImplement;
import com.brabbit.springboot.app.models.service.PersonaDaoImplement;
import com.brabbit.springboot.app.models.service.ProfesorDaoImplement;
import com.brabbit.springboot.app.models.service.RoleDaoImplement;

import java.io.*;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;


@Controller
public class ProfesorController {
	
	protected final Log logger = LogFactory.getLog(this.getClass());
	
	@Autowired
	private ProfesorDaoImplement profesorDao;
	
	@Autowired
	private AlumnoDaoImplement alumNoDao;


	@Autowired
	private PersonaDaoImplement personDao;
	
	@Autowired
	private RoleDaoImplement roleDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Autowired
	private NivelEducativoDaoImplement nivelDao;
	
	@Autowired
	private CursoDaoImplement cursoDao;
	
	@Autowired
	private DenunciaDaoImplement denunciaDao;
	

	
	//MENSAJES
	@Autowired
	private MensajesDaoImplement mensajesDao;

	
	@RequestMapping("/profesor")
	public String Profesor(Model model, Authentication authentication, Principal principal) {

		if(authentication != null) {
			logger.info("Hola ".concat(authentication.getName()));
		}
		
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		
		Profesor profesor = profesorDao.porId(validar.getId());
		List<Curso> Cursos= cursoDao.listarCursos(profesor);
		
		for(Curso element : Cursos) {
			  System.out.println(element. getTITULO());
			}
		
		List<Alumno> ids = alumNoDao.findAll();
		
		model.addAttribute("username", validar.getUsername());
		model.addAttribute("apellido", validar.getApellido());
		model.addAttribute("cursos", Cursos);
		model.addAttribute("clientees", ids);	
		
		return "teacher";
	}
	
	@RequestMapping("/profesor/crearCurso")
	public String CrearCurso(Model model,  Authentication authentication, Principal principal) {
		
		if(authentication != null) {
			logger.info("Hola ".concat(authentication.getName()));
		}
		
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		
		return "createCourse";		
	} 
	
	
	
	
	
	@RequestMapping(value = "/registro/profesor", method = RequestMethod.POST)
	public String formularioPersona(@RequestParam("cv") MultipartFile cv, @RequestParam("ine") MultipartFile ine,
			@RequestParam("name") String nombre, @RequestParam("lastname") String apellido,
			@RequestParam("rfc") String rfc, @RequestParam("curp") String curp, @RequestParam("correo") String correo,
			@RequestParam("password") String password, @RequestParam("ConfirmPass") String confirm,
			/*@RequestParam("Fecha_nacimiento") @DateTimeFormat(pattern = "yyyy-MM-dd") Date Fecha_nacimiento,*/
			ModelMap modelMap, @RequestParam(value = "error", required = false) String error, RedirectAttributes ra,
			@RequestParam(value = "registro", required = false) String registro,
			Model model) {

		Persona persona = new Persona();
		Role role = new Role();
		role.setRoles("ROLE_PROFESOR");
		roleDao.save(role);
		boolean validoC = false;
		ValidarCorreo vc = new ValidarCorreo();
		persona.setUsername(correo);
		validoC = vc.validar(correo);
		Persona validar = personDao.porCorreo(correo);

		if (password.contentEquals(confirm)  & (validar == null) ) {
			persona.setNombre(nombre);
			persona.setApellido(apellido);
			persona.setPassword(passwordEncoder.encode(password));
			//persona.setfNacimiento(Fecha_nacimiento);
			persona.addRole(role);
			persona.setEnabled(true);
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

			
			model.addAttribute("registro", "Registro Exitoso!!");
			return "login";
		} else {
			ra.addFlashAttribute("error", "Contraseña no coincide o el Correo no es valido");
			return "redirect:/registroP";

		}
	}
	

	
	@RequestMapping(value = "/nuevo/curso", method = RequestMethod.POST)
	 public String crearCurso(
			 @RequestParam("titulo")String titulo,
			 @RequestParam("descripcion")String descripcion,
			 @RequestParam(value="primaria",required=false) String primaria,
			 @RequestParam(value="secundaria",required=false) String secundaria,
			 @RequestParam(value="bachillerato",required=false) String bachillerato,
			 @RequestParam(value="universidad",required=false) String universidad,
			 @RequestParam(value="maestria",required=false) String maestria,
			 @RequestParam(value="doctorado",required=false) String doctorado,
			 @RequestParam("horario")String horario,
			 @RequestParam("costo")Integer costo,
			 Model model, Authentication authentication, Principal principal,RedirectAttributes ra) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName();
		Persona persona = personDao.porNombre(name);

		System.out.println("******************************************************************");
		System.out.println(persona.getNombre()+" NOMBRE");
		
		System.out.println("******************************************************************");
		Profesor profesor = profesorDao.porId(persona.getId());
		System.out.println("******************************************************************");
		System.out.println(profesor.getRFC()+" RFC");
		List<NivelEducativo> nivel = new ArrayList<>();
		

		String nombre = persona.getNombre()+" "+persona.getApellido();
		
		Curso curso = new Curso();
		curso.setNiveles(nivel);
		curso.setTITULO(titulo);
		curso.setDESCRIPCION(descripcion);
		curso.setRFC(profesor);
		curso.setCOSTO(costo);
		
		if( primaria!= null)
		  {
			NivelEducativo pri = nivelDao.findOne(1);
			curso.getNiveles().add(pri);
		    System.out.println("primaria is checked");
		  }
		  else
		  {
		    System.out.println("primaria is not checked");
		  }
		
		if(secundaria != null)
		  {
			NivelEducativo secu = nivelDao.findOne(2);
			curso.getNiveles().add(secu);
			System.out.println("secundaria is checked");
		  }
		  else
		  {
		    System.out.println("secundaria is not checked");
		  }
		
		if(bachillerato != null)
		  {
			NivelEducativo bachi = nivelDao.findOne(3);
			curso.getNiveles().add(bachi);
			System.out.println("bachillerato is checked");
		  }
		  else
		  {
		    System.out.println("bachillerato is not checked");
		  }
		
		if(universidad != null)
		  {
			NivelEducativo uni = nivelDao.findOne(4);
			curso.getNiveles().add(uni);
		  }
		  else
		  {
		    System.out.println("universidad is not checked");
		  }
		
		if(maestria != null)
		  {
			NivelEducativo maes = nivelDao.findOne(5);
			curso.getNiveles().add(maes);
			System.out.println("maestria is checked");
		  }
		  else
		  {
		    System.out.println("maestria is not checked");
		  }
		if(doctorado != null)
		  {
			NivelEducativo doc = nivelDao.findOne(6);
			curso.getNiveles().add(doc);
			System.out.println("doctorado is checked");
		  }
		  else
		  {
		    System.out.println("doctorado is not checked");
		  }
		
		
		 curso.setHORARIO(horario);
		 curso.setPROFESOR(nombre);
		 curso.setUSERNAME(persona.getUsername());
		 cursoDao.save(curso);
		 
	
		 
		 if(authentication != null) {
				logger.info("Hola ".concat(authentication.getName()));
			}
			
		 ra.addFlashAttribute("success", "Curso Creado con exito!!");
					
		return "redirect:/profesor";
	}
	

	
	@RequestMapping(value = "/denunciar/profesor")
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
			return "redirect:/profesor";
			
		}else {
			
			
			denuncia.setProblema(problema);
			
			denuncia.setDenunciante(persona.getUsername());
			
			denunciaDao.save(denuncia);
			
			ra.addFlashAttribute("success", "Tu Denuncia se ha hecho con exito!");
			return"redirect:/profesor";
			
		}
		
	}
	
	//METODO PARA ESPIAR LO QUE ENSEÑAN LOS DEMAS
	@RequestMapping("/verCursosProfesores")

	public String cursosDeOtros(Model model) {
         List<Curso> Cursos= cursoDao.listarCursosT();
		
		for(Curso element : Cursos) {
			  System.out.println(element. getTITULO());
			  System.out.println(element.getPROFESOR());
			}
		model.addAttribute("cursos", Cursos);
		return "cursosDeOtros";
	}
	
	/*
	 * METODO TE REDIRECCIONA AL CHAT
	 * */	
	@RequestMapping(value="/profesor/cursos/chat/{id}", method = RequestMethod.POST)
	public String comprar(Model model, Authentication authentication, Principal principal,@PathVariable(value = "id") Long id,
			@RequestParam("idAlumno") Long idAlumn) {
		
		System.out.println("******************************************************************");
		System.out.println(idAlumn+" id long CHAT");
		
		
		//OBTENEMOS AL USUARIO LOGUEADO EN ESTE CASO ALUMNO = VALIDAR
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		
		//SEGUIMIENTO
		System.out.println("******************************************************************");
		System.out.println(validar.getNombre()+" NOMBRE");
		System.out.println("******************************************************************");
		//CASAMOS EL ALUMNO
		Alumno alumno = alumNoDao.porId(idAlumn);
		Persona alumnop = alumno.getID_PERSONA();
		System.out.println("********************ID DE ALUMNO**********************************************");
		System.out.println(alumno.getID_ALUMNO());
		//SACAMOS LOS CURSOS DEL ALUMNO PARA VERIFICAR QUE HAYA COMPRADO EL CURSO ANTES
		Profesor profesor = profesorDao.porId(validar.getId());
		
    	//ENCUENTRA EL CURSO POR EL ID
    	Curso curso = cursoDao.findById(id); 
    	
    	//ENCONTRAMOS EL PROFESOR OBTENIENDOLO DEL MISMO CURSO
      
        
        //IDE DEL PROFESOR Y DEL ALUMNO IMPORTANTE PARA EL CHAT
    	Long idProfesor =validar.getId();
    	Long idAlumno = alumno.getID_PERSONA().getId();
    	

		System.out.println("guardando mensaje");
		System.out.println("alumno"+idAlumno);
		System.out.println("profesor"+idProfesor);
		System.out.println("*************ENVIANDO AL CHAT");
		System.out.println(validar.getNombre()+" NOMBRE");
		System.out.println(alumnop.getNombre()+" NOMBRE");
   	     model.addAttribute("profesor",validar);
    	 model.addAttribute("alumno",alumnop);
    	 model.addAttribute("idProfesor",idProfesor);
    	 model.addAttribute("idAlumno",idAlumno);
    	 model.addAttribute("curso", curso);
		return "chat2";
	}
	
	
	/*
	 * METODO QUE GUARDA LAS COSAS DESDE EL POST DE JAX ASI BIENN CHULO NO TOQUE NADA DE AQUI ES MUY FRAGIL :d
	 * */
	 
	@RequestMapping(value = "/profesor/cursoT/chat/{id}", method = RequestMethod.POST)
	@ResponseBody
	 public void savemensje(@RequestParam String mensaje,@RequestParam Long idAlumno,@RequestParam Long idProfesor,@RequestParam Long idCurso) {
		System.out.println(mensaje);
		
		System.out.println("guardando mensaje");
		System.out.println("alumno"+idAlumno);
		System.out.println("profesor"+idProfesor);
		System.out.println("curso"+idCurso);
		
		Curso curso = cursoDao.findById(idCurso);
		Mensajes mensajeNuevo = new Mensajes();
		mensajeNuevo.setMENSAJE(mensaje);
		mensajeNuevo.setPROFESOR(idProfesor);
		mensajeNuevo.setALUMNO(idAlumno);
		mensajeNuevo.setPROPIEDAD(1);
		mensajesDao.save(mensajeNuevo);
		curso.getMensajes().add(mensajeNuevo);
		cursoDao.save(curso);
		System.out.println("mensaje exitoso");
		
	}

	@RequestMapping(value="/profesor/asesorias/{id}")
	public String profesorasesoria(@PathVariable (value = "id") Long id, Model model, Authentication authentication, 
			                     Principal principal) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName();
		Persona persona = personDao.porNombre(name);
		
		
		System.out.println("******************************************************************");
		System.out.println(persona.getNombre()+" NOMBRE");
		System.out.println("******************************************************************");
		Profesor profesor = profesorDao.porId(persona.getId());
		System.out.println("******************************************************************");
		System.out.println(profesor.getRFC()+" RFC");
		
		Curso curso = cursoDao.findById(id);
		List<Alumno> alumnos=curso.getAlumno();
		
		model.addAttribute("alumnos", alumnos);
		model.addAttribute("curso", curso);
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		return "CursoUsers";
	}

	
}
