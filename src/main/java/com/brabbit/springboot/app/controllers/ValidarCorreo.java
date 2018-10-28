package com.brabbit.springboot.app.controllers;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/*Validar Correo*/

public class ValidarCorreo {

	String PATTERN_EMAIL = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "ciencias.unam.mx";

	String PATTERN_NAME = "^[a-z0-9ü][a-z0-9ü_]{3,9}";

	/**
	 * Validate given email with regular expression.
	 * 
	 * @param email email for validation
	 * @return true valid email, otherwise false
	 */
	public boolean validar(String email) {

		// Compiles the given regular expression into a pattern.
		Pattern pattern = Pattern.compile(PATTERN_EMAIL);

		// Match the given input against this pattern
		Matcher matcher = pattern.matcher(email);
		return matcher.matches();
	}

	public boolean validarNombre(String nombre) {
		// Compiles the given regular expression into a pattern.
		Pattern pattern = Pattern.compile(PATTERN_NAME);

		// Match the given input against this pattern
		Matcher matcher = pattern.matcher(nombre);
		return matcher.matches();
	}
}
