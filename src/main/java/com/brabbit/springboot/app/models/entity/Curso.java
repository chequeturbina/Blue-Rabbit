package com.brabbit.springboot.app.models.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="CURSO")
public class Curso implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private long ID_CURSO;
	
    @ManyToOne	
    @JoinColumn(name="RFC")
    private Profesor RFC;
    
    private String TITULO;
    
    private String DESCRIPCION;
    
    private int VISIBLE;
    
    @JoinTable
    @OneToMany
    private List<NivelEducativo> NIVELESOS;
    
    


	public List<NivelEducativo> getNIVELES() {
		return NIVELESOS;
	}

	public void setNIVELES(List<NivelEducativo> nIVELES) {
		NIVELESOS = nIVELES;
	}

	public long getID_CURSO() {
		return ID_CURSO;
	}

	public void setID_CURSO(long iD_CURSO) {
		ID_CURSO = iD_CURSO;
	}

	public Profesor getRFC() {
		return RFC;
	}

	public void setRFC(Profesor rFC) {
		RFC = rFC;
	}

	public String getTITULO() {
		return TITULO;
	}

	public void setTITULO(String tITULO) {
		TITULO = tITULO;
	}

	public String getDESCRIPCION() {
		return DESCRIPCION;
	}

	public void setDESCRIPCION(String dESCRIPCION) {
		DESCRIPCION = dESCRIPCION;
	}

	public int getVISIBLE() {
		return VISIBLE;
	}

	public void setVISIBLE(int vISIBLE) {
		VISIBLE = vISIBLE;
	}


    
    
    
}
