package com.brabbit.springboot.app.models.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="DENUNCIA")
public class Denuncia implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private long ID_DENUNCIA;
	
    @ManyToOne
    @JoinColumn(name="RFC")
    private Profesor RFC;
    
    private String comentarioDenuncia;
    

	private int VISIBLE;
	
	public long getID_DENUNCIA() {
		return ID_DENUNCIA;
	}

	public void setID_DENUNCIA(long iD_DENUNCIA) {
		ID_DENUNCIA = iD_DENUNCIA;
	}

	public Profesor getRFC() {
		return RFC;
	}

	public void setRFC(Profesor rFC) {
		RFC = rFC;
	}

	public String getComentarioDenuncia() {
		return comentarioDenuncia;
	}

	public void setComentarioDenuncia(String comentarioDenun) {
		comentarioDenuncia = comentarioDenun;
	}


	public int getVISIBLE() {
		return VISIBLE;
	}

	public void setVISIBLE(int vISIBLE) {
		VISIBLE = vISIBLE;
	}
            
}
