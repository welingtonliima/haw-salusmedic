package br.com.haw.salusmedic.model;

import java.util.Calendar;

import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Embeddable
public class CarteiraDeIdentidade {
	
	private String numeroRG;
	private String orgaoEmissor;
	@DateTimeFormat @Temporal(TemporalType.DATE)
	private Calendar dataExpedicao;
	
	public String getNumeroRG() {
		return numeroRG;
	}
	
	public void setNumeroRG(String numeroRG) {
		this.numeroRG = numeroRG;
	}
	
	public String getOrgaoEmissor() {
		return orgaoEmissor;
	}
	
	public void setOrgaoEmissor(String orgaoEmissor) {
		this.orgaoEmissor = orgaoEmissor;
	}

	public Calendar getDataExpedicao() {
		return dataExpedicao;
	}

	public void setDataExpedicao(Calendar dataExpedicao) {
		this.dataExpedicao = dataExpedicao;
	}
}
