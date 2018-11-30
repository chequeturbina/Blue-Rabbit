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

	//MENSAJES
	@Autowired
	private MensajesDaoImplement mensajesDao;
	
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
		
		//OBTENEMOS EL ALUMNO DE VALIDAR
		System.out.println("******************************************************************");
		System.out.println(validar.getNombre()+" NOMBRE");
		System.out.println("******************************************************************");
		Alumno alumno = alumNoDao.porId(validar.getId());
		System.out.println("******************************************************************");
		System.out.println(alumno.getID_ALUMNO());
		//aQUI YA LO OBTUVIMOS
		//SACAMOS LOS CURSOS QUE EXISTEN EN EL USUARIO :)
        List<Curso> cursos = alumno.getCursos();
        
        List<Profesor> ids = profesorDao.findAll();
        
        
        
    	for(Curso element : cursos) {
			  System.out.println(element. getTITULO());	
			}
    	

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
			alumno.setID_PERSONA(persona);
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
	


	@RequestMapping("/alumno/vercursos/{id}")

	public String cursoss(@PathVariable(value = "id") Long id,Model model,
			              Authentication authentication, Principal principal) {
        Curso curso= cursoDao.findById(id);
        String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		//MANDAMOS EL CURSO  Y EL NOMBRE DEL USUARIO
		model.addAttribute("nombre", validar.getNombre());
		model.addAttribute("username", validar.getUsername());
		model.addAttribute("curso", curso);
		return "curso";
	}
	
	

	/*
	 * METODO PARA COMPRAR CURSO
	 * */
	
	@RequestMapping("/alumno/comprar/{id}")
	public String comprar(@PathVariable(value = "id") Long id,Model model,RedirectAttributes ra) {
		
		//BUSCAMOS AL ALUMNO LOGUEADO
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName();
		Persona persona = personDao.porNombre(name);
		
		System.out.println("******************************************************************");
		System.out.println(persona.getNombre()+" NOMBRE");
		System.out.println("******************************************************************");
		Alumno alumno = alumNoDao.porId(persona.getId());
		System.out.println("******************************************************************");
		System.out.println(alumno.getID_ALUMNO());
		// OBTENEMOS EL ALUMNO
		
		//BUSCAMOS EL CURSO POR EL ID
        Curso curso= cursoDao.findById(id);
        
        //BUSCAMOS EL PROFESOR POR EL CURSO
        String pr=curso.getUSERNAME().trim();
        Persona profesor = personDao.porNombre(pr);
        //YA LO OBTUVIMOS
        System.out.println(profesor.getId()+"nomames");
        
        //CREAMOS EL MENSAJE DE BIENBENIDA 
        
        Mensajes bienvenida = new Mensajes();
		bienvenida.setMENSAJE(" Muchas gracias por adquirir mi "+curso.getTITULO()+" por favor mandame un mensaje para ponernos en contaco :)");
		bienvenida.setPROFESOR(profesor.getId());
		bienvenida.setALUMNO(alumno.getID_ALUMNO());
		bienvenida.setPROPIEDAD(1);
		//LA PROPIEDAD 1 ES PARA EL PROFESOR Y  LA 2 PARA EL ALUMNO
		//TERMINAIMOS Y MOSTRAMOS LO GUARDADO
		mensajesDao.save(bienvenida);
		System.out.println(bienvenida.getMENSAJE());
		System.out.println(bienvenida.getALUMNO());
		System.out.println(bienvenida.getPROFESOR());
		
		//GUARDAMOS  EL MENSAJE DE BINVENIDA EN LA LISTA DE MESNSAJES DEL CURSO
		curso.getMensajes().add(bienvenida);
        System.out.println(curso.getTITULO());		
        alumno.getCursos().add(curso);
        alumNoDao.save(alumno);

		return "redirect:/alumno";
	}
	
	
	/*
	 * METODO TE REDIRECCIONA AL CHAT
	 * */	
	@RequestMapping("/alumno/cursos/chat/{id}")
	public String comprar(Model model, Authentication authentication, Principal principal,@PathVariable(value = "id") Long id) {
		
		//OBTENEMOS AL USUARIO LOGUEADO EN ESTE CASO ALUMNO = VALIDAR
		String username = authentication.getName();
		Persona validar = personDao.porNombre(username);
		model.addAttribute("nombre", validar.getNombre());
		
		//SEGUIMIENTO
		System.out.println("******************************************************************");
		System.out.println(validar.getNombre()+" NOMBRE");
		System.out.println("******************************************************************");
		//CASAMOS EL ALUMNO
		Alumno alumno = alumNoDao.porId(validar.getId());
		System.out.println("******************************************************************");
		System.out.println(alumno.getID_ALUMNO());
		
		//SACAMOS LOS CURSOS DEL ALUMNO PARA VERIFICAR QUE HAYA COMPRADO EL CURSO ANTES
        List<Curso> cursos = alumno.getCursos();
        
        boolean flag = false;
    	for(Curso element : cursos) {
    		
    			if(element.getID_CURSO()==id) {
    				flag=true;
    			}
			  System.out.println(element.getID_CURSO());
			  System.out.println(element.getTITULO());
			}
    	
    	if(flag==false) {
    		
    		//REDIRECCIONA A LA VISTA DE COMPRA DEL CURSO
    		
    		return "redirect:/alumno/cursos/"+id;
    	}
    	//ENCUENTRA EL CURSO POR EL ID
    	Curso curso = cursoDao.findById(id); 
    	
    	//ENCONTRAMOS EL PROFESOR OBTENIENDOLO DEL MISMO CURSO
        String pr=curso.getUSERNAME().trim();
        Persona profesor = personDao.porNombre(pr);
        System.out.println(profesor.getId()+"nomames");
        
        //IDE DEL PROFESOR Y DEL ALUMNO IMPORTANTE PARA EL CHAT
    	Long idProfesor =profesor.getId();
    	Long idAlumno = alumno.getID_ALUMNO();
    	
    	 model.addAttribute("alumno",validar);
    	 model.addAttribute("idProfesor",idProfesor);
    	 model.addAttribute("idAlumno",idAlumno);
    	 model.addAttribute("curso", curso);
		return "chat";
	}
	
	
	/*
	 * METODO QUE GUARDA LAS COSAS DESDE EL POST DE JAX ASI BIENN CHULO NO TOQUE NADA DE AQUI ES MUY FRAGIL :d
	 * */
	 
	@RequestMapping(value = "/alumno/curso/chat/{id}", method = RequestMethod.POST)
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
		mensajeNuevo.setPROPIEDAD(2);
		mensajesDao.save(mensajeNuevo);
		curso.getMensajes().add(mensajeNuevo);
		cursoDao.save(curso);
		System.out.println("mensaje exitoso");
		
	}
	
	
}
