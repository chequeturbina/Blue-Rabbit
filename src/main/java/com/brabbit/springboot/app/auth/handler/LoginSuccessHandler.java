package com.brabbit.springboot.app.auth.handler;

import java.io.IOException;
import java.util.Collection;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.support.SessionFlashMapManager;
import org.springframework.security.core.GrantedAuthority;

@Component
public class LoginSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {

		//set our response to OK status
        response.setStatus(HttpServletResponse.SC_OK);
        boolean isAlumno = false;
        boolean isProfesor = false;
        boolean isAdmin = false;
        SessionFlashMapManager flashMapManager = new SessionFlashMapManager();
        FlashMap flashMap = new FlashMap();

		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		
		flashMapManager.saveOutputFlashMap(flashMap, request, response);
		 for (GrantedAuthority grantedAuthority : authorities) {
	            if (grantedAuthority.getAuthority().equals("ROLE_ALUMNO")) {
	            	if (authentication != null) {
	            		logger.info("El usuario "+ authentication.getName() +"ha iniciado sesion con exito");
	            	}
	            	//Mostrar que el usuario tal inicio sesion Esto lo jalaa para usarlo en el controlador
	        		flashMap.put("success","Hola " + authentication.getName() + "Haz iniciado Sesion");
	        		

	                isAlumno = true;
	                break;
	            } else if (grantedAuthority.getAuthority().equals("ROLE_PROFESOR")) {
	            	if (authentication != null) {
	            		logger.info("El usuario "+ authentication.getName() +"ha iniciado sesion con exito");
	            	}
	            	//Mostrar que el usuario tal inicio sesion Esto lo jalaa para usarlo en el controlador
	        		flashMap.put("success","Hola " + authentication.getName() + "Haz iniciado Sesion");

	            	isProfesor = true;
	                break;
	            }else if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
	            	//Esta linea imprime en consola el mensaje y jala el que haya iniciado sesion
	            	if (authentication != null) {
	            		logger.info("El usuario "+ authentication.getName() +"ha iniciado sesion con exito");
	            	}
	            	//Mostrar que el usuario tal inicio sesion Esto lo jalaa para usarlo en el controlador
	        		flashMap.put("success","Hola " + authentication.getName() + "Haz iniciado Sesion");

	            	isAdmin = true;
	                break;
	            }
	        }
	        
	        if(isAlumno){
	        	System.out.println("pasa");
	        	response.sendRedirect("/alumno");
	        } else if (isProfesor) {
	            response.sendRedirect("/profesor");
	        }else if (isAdmin) {
	            response.sendRedirect("/admin");
	        }else{
	        	response.sendRedirect("/index");
	        }
	        
	        super.onAuthenticationSuccess(request, response, authentication);
	}
	


}
