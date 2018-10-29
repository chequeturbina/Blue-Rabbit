package com.brabbit.springboot.app.models.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="PERSONA")
public class Persona implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="PERSONA_ID")
	private long id;
	
	private String nombre;
	private String apellido;
	private char sexo;
	private Date fNacimiento;
	private String username;
	private String password;
	@Temporal(TemporalType.DATE)
	private Date fRegistro;
	
	private Boolean enabled;

	@OneToMany
	  @JoinTable
	  (
	      name="PERSONA_ROLES",
	      joinColumns={ @JoinColumn(name="PERSONA_ID", referencedColumnName="PERSONA_ID") },
	      inverseJoinColumns={ @JoinColumn(name="ROLES_ID", referencedColumnName="ID", unique=true) }
	  )
	private List<Role> roles;
	
	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	//Este se ejecuta antes de crear la instancia y asigna la fecha al objeto bebe :)
	public void prePersist() {
		fRegistro = new Date();
	}
		
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public char getSexo() {
		return sexo;
	}

	public void setSexo(char sexo) {
		this.sexo = sexo;
	}

	public Date getfNacimiento() {
		return fNacimiento;
	}

	public void setfNacimiento(Date fNacimiento) {
		this.fNacimiento = fNacimiento;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getfRegistro() {
		return fRegistro;
	}

	public void setfRegistro(Date fRegistro) {
		this.fRegistro = fRegistro;
	}
	
	/*Metodo para agregar los roles de cada tipo de usuario*/
	public void addRole(Role role) {
	    this.roles.add(role);
	}
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
}
