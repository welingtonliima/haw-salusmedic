package br.com.haw.salusmedic.model;

import javax.persistence.Embeddable;

@Embeddable
public class Alergias {
	
	private String substancia;
	private String observacaoAlergia;
	
	
	public String getSubstancia() {
		return substancia;
	}
	public void setSubstancia(String substancia) {
		this.substancia = substancia;
	}
	public String getObservacaoAlergia() {
		return observacaoAlergia;
	}
	public void setObservacaoAlergia(String observacaoAlergia) {
		this.observacaoAlergia = observacaoAlergia;
	}
	

}
