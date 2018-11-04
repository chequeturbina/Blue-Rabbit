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

		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();

		 for (GrantedAuthority grantedAuthority : authorities) {
	            if (grantedAuthority.getAuthority().equals("ROLE_ALUMNO")) {
	                isAlumno = true;
	                break;
	            } else if (grantedAuthority.getAuthority().equals("ROLE_PROFESOR")) {
	                isProfesor = true;
	                break;
	            }else if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
	                isAdmin = true;
	                break;
	            }
	        }
	        
	        if(isAlumno){
	        	response.sendRedirect("/student");
	        } else if (isProfesor) {
	            response.sendRedirect("/profesor");
	        }else if (isAdmin) {
	            response.sendRedirect("/admin");
	        }else{
	        	response.sendRedirect("/index");
	        }
	}
}
