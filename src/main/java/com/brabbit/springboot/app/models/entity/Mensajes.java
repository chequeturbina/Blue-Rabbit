package com.brabbit.springboot.app.models.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="MENSAJES")
public class Mensajes implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private long ID_MENSAJE;
	
	  private String MENSAJE;
	  
	  
	  private Long ALUMNO;
	  
	  private Long PROFESOR;

	  private int  PROPIEDAD;
	  
	public int getPROPIEDAD() {
		return PROPIEDAD;
	}

	public void setPROPIEDAD(int pROPIEDAD) {
		PROPIEDAD = pROPIEDAD;
	}

	public long getID_MENSAJE() {
		return ID_MENSAJE;
	}
	
	 @ManyToMany(mappedBy = "mensajes")
	    private List<Curso> cursos = new ArrayList<>();
	

	public List<Curso> getCursos() {
		return cursos;
	}

	public void setCursos(List<Curso> cursos) {
		this.cursos = cursos;
	}

	public void setID_MENSAJE(long iD_MENSAJE) {
		ID_MENSAJE = iD_MENSAJE;
	}

	public String getMENSAJE() {
		return MENSAJE;
	}

	public void setMENSAJE(String mENSAJE) {
		MENSAJE = mENSAJE;
	}

	public Long getALUMNO() {
		return ALUMNO;
	}

	public void setALUMNO(Long aLUMNO) {
		ALUMNO = aLUMNO;
	}

	public Long getPROFESOR() {
		return PROFESOR;
	}

	public void setPROFESOR(Long pROFESOR) {
		PROFESOR = pROFESOR;
	}
	  
	  
	  
	    
	
}
