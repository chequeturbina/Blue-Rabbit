package com.brabbit.springboot.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.brabbit.springboot.app.auth.handler.LoginSuccessHandler;
import com.brabbit.springboot.app.models.service.JpaUserDetailsService;

@EnableGlobalMethodSecurity(securedEnabled=true, prePostEnabled=true)
@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	private LoginSuccessHandler successHandler;
	
	@Autowired
	private JpaUserDetailsService userDetailsService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests()
		.antMatchers("/", "/css/**", "/js/**","/login/**","/img/**","/h2-console/**","/registro/alumno","/registro/profesor","/registroA","/registroP","/alerta","/error_403").permitAll()
		.antMatchers("/admin/**").hasRole("ADMIN")
		.antMatchers("/student/**").hasRole("ALUMNO")
		.antMatchers("/profesor/**").hasRole("PROFESOR")
		.anyRequest().authenticated()
		.and()
        .formLogin()
		   .successHandler(successHandler)
		   .loginPage("/login")
		   .permitAll()
		.and()
		    .logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/error_403");
		
		http.headers().frameOptions().disable();
		http.csrf().disable();

	}

	@Autowired
	public void configurerGlobal(AuthenticationManagerBuilder build) throws Exception
	{
		build.userDetailsService(userDetailsService)
		.passwordEncoder(passwordEncoder);

	}
}
