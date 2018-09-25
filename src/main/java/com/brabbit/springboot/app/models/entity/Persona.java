package com.brabbit.springboot.app.models.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="PERSONA")
public class Persona implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long ID_PERSONA;
	
	private String NOMBRE;
	private String APELLIDO;
	private char SEXO;
	private Date FECHA_NACIMIENTO;
	private String CORREO;
	private String PASSWORD;
	@Temporal(TemporalType.DATE)
	private Date FECHA_REGISTRO;
	
	//Este se ejecuta antes de crear la instancia y asigna la fecha al objeto bebe :)
	public void prePersist() {
		FECHA_REGISTRO = new Date();
	}
	
	public long getID_PERSONA() {
		return ID_PERSONA;
	}
	public void setID_PERSONA(long iD_PERSONA) {
		ID_PERSONA = iD_PERSONA;
	}
	
	public String getNOMBRE() {
		return NOMBRE;
	}
	public void setNOMBRE(String aNOMBRE) {
		NOMBRE = aNOMBRE;
	}
	
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	
	public String getAPELLIDO() {
		return APELLIDO;
	}
	public void setAPELLIDO(String aPELLIDO) {
		APELLIDO = aPELLIDO;
	}
	public char getSEXO() {
		return SEXO;
	}
	public void setSEXO(char sEXO) {
		SEXO = sEXO;
	}
	public Date getFECHA_NACIMIENTO() {
		return FECHA_NACIMIENTO;
	}
	public void setFECHA_NACIMIENTO(Date fECHA_NACIMIENTO) {
		FECHA_NACIMIENTO = fECHA_NACIMIENTO;
	}
	public Date getFECHA_REGISTRO() {
		return FECHA_REGISTRO;
	}
	public void setFECHA_REGISTRO(Date fECHA_REGISTRO) {
		FECHA_REGISTRO = fECHA_REGISTRO;
	}
	public String getCORREO() {
		return CORREO;
	}
	public void setCORREO(String cORREO) {
		CORREO = cORREO;
	}
	//@id@OneToOne
	
	//mappedBy
	
}
