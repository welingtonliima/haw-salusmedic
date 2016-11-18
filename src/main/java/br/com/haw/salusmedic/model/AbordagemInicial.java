package br.com.haw.salusmedic.model;

import javax.persistence.Embeddable;

@Embeddable
public class AbordagemInicial {
	
	private String queixaInicial;
	private String observacao;
	
	
	public String getQueixaInicial() {
		return queixaInicial;
	}
	public void setQueixaInicial(String queixaInicial) {
		this.queixaInicial = queixaInicial;
	}
	public String getObservacao() {
		return observacao;
	}
	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	

}
