package com.brabbit.springboot.app.models.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="PROFESOR")
public class Profesor implements Serializable{

	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	private String  RFC;
	@Column(unique=true)
	private String  CURP;
	@Lob
	private byte[]  INE;
	@Lob
	private byte[]  CV;
	private String  CVT;
	
	@OneToOne(cascade={CascadeType.ALL})
	  @JoinColumn(name="ID_PERSONA")
	private Persona ID_PERSONA;

	
	
	public String getRFC() {
		return RFC;
	}

	public void setRFC(String rFC) {
		RFC = rFC;
	}

	public String getCURP() {
		return CURP;
	}

	public void setCURP(String cURP) {
		CURP = cURP;
	}

	public byte[] getINE() {
		return INE;
	}

	public void setINE(byte[] iNE) {
		INE = iNE;
	}

	public byte[] getCV() {
		return CV;
	}

	public void setCV(byte[] cV) {
		CV = cV;
	}

	public String getCVT() {
		return CVT;
	}

	public void setCVT(String cVT) {
		CVT = cVT;
	}

	public Persona getID_PERSONA() {
		return ID_PERSONA;
	}

	public void setID_PERSONA(Persona iD_PERSONA) {
		ID_PERSONA = iD_PERSONA;
	}
	
	
}
