package com.brabbit.springboot.app.models.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ALUMNO")
public class Alumno implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long ID_ALUMNO;
	
	@OneToOne(cascade={CascadeType.ALL})
	  @JoinColumn(name="ID_PERSONA")
	private Persona ID_PERSONA;

	
	public Persona getID_PERSONA() {
		return ID_PERSONA;
	}

	public void setID_PERSONA(Persona iD_PERSONA) {
		ID_PERSONA = iD_PERSONA;
	}

	@OneToOne(cascade= {CascadeType.ALL})
	 @JoinColumn(name="ID_NIVEL")
	private NivelEducativo ID_NIVEL;

	 @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	    private List<Curso> cursos = new ArrayList<>();
	 
	public List<Curso> getCursos() {
		return cursos;
	}

	public void setCursos(List<Curso> cursos) {
		this.cursos = cursos;
	}

	public long getID_ALUMNO() {
		return ID_ALUMNO;
	}

	public void setID_ALUMNO(long iD_ALUMNO) {
		ID_ALUMNO = iD_ALUMNO;
	}

	public NivelEducativo getID_NIVEL() {
		return ID_NIVEL;
	}

	public void setID_NIVEL(NivelEducativo iD_NIVEL) {
		ID_NIVEL = iD_NIVEL;
	} 
	
	
	
	

	
}
