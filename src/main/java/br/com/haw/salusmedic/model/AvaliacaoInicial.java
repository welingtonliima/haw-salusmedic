package br.com.haw.salusmedic.model;

import javax.persistence.Embeddable;

@Embeddable
public class AvaliacaoInicial {
	
	private String avaliacaoDeRisco;
	private String escalaDeDor;
	
	public String getAvaliacaoDeRisco() {
		return avaliacaoDeRisco;
	}
	public void setAvaliacaoDeRisco(String avaliacaoDeRisco) {
		this.avaliacaoDeRisco = avaliacaoDeRisco;
	}
	public String getEscalaDeDor() {
		return escalaDeDor;
	}
	public void setEscalaDeDor(String escalaDeDor) {
		this.escalaDeDor = escalaDeDor;
	}
}
