package com.brabbit.springboot.app.models.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/*
 * Tabla que tiene enlazado los horarios disponibles del curso y el curso
*/
@Entity
@Table(name="HORARIO")
public class Horario implements Serializable{
  
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long ID_HORARIO;
	
	
	private Date HORARIO_INICIO;
	
	private Date HORARIO_FIN;
	
	private String COMENTARIO;

	public long getID_HORARIO() {
		return ID_HORARIO;
	}

	public void setID_HORARIO(long iD_HORARIO) {
		ID_HORARIO = iD_HORARIO;
	}

	public Date getHORARIO_INICIO() {
		return HORARIO_INICIO;
	}

	public void setHORARIO_INICIO(Date hORARIO_INICIO) {
		HORARIO_INICIO = hORARIO_INICIO;
	}

	public Date getHORARIO_FIN() {
		return HORARIO_FIN;
	}

	public void setHORARIO_FIN(Date hORARIO_FIN) {
		HORARIO_FIN = hORARIO_FIN;
	}

	public String getCOMENTARIO() {
		return COMENTARIO;
	}

	public void setCOMENTARIO(String cOMENTARIO) {
		COMENTARIO = cOMENTARIO;
	}
	
	
	
	
}
