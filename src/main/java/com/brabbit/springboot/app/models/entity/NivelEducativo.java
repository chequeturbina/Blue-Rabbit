package com.brabbit.springboot.app.models.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="NIVEL_EDU")
public class NivelEducativo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long ID_NIVEL;
	
	 @ManyToMany(mappedBy = "niveles")
	    private List<Curso> cursos = new ArrayList<>();
	

		private String NIVEL;
		
	public List<Curso> getCursos() {
		return cursos;
	}

	public void setCursos(List<Curso> cursos) {
		this.cursos = cursos;
	}


	public long getID_NIVEL() {
		return ID_NIVEL;
	}

	public void setID_NIVEL(long iD_NIVEL) {
		ID_NIVEL = iD_NIVEL;
	}

	public String getNIVEL() {
		return NIVEL;
	}

	public void setNIVEL(String nIVEL) {
		NIVEL = nIVEL;
	}
	
}
