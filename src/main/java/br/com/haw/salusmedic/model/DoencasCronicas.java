package br.com.haw.salusmedic.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class DoencasCronicas {
	
	@Id @Column(name="idDoencasCronicas") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	private Diagnostico diagnostico;
	private String tempoDaDoença;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Diagnostico getDiagnostico() {
		return diagnostico;
	}
	public void setDiagnostico(Diagnostico diagnostico) {
		this.diagnostico = diagnostico;
	}
	public String getTempoDaDoença() {
		return tempoDaDoença;
	}
	public void setTempoDaDoença(String tempoDaDoença) {
		this.tempoDaDoença = tempoDaDoença;
	}
}
