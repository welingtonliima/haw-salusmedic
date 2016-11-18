package br.com.haw.salusmedic.model;

import javax.persistence.Embeddable;

@Embeddable
public class SinaisVitais {
	
	private double frequenciaCardiaca;
	private double frequenciaRespiratoria;
	private double glicemia;
	private double peso;
	private double pressaoArterialSistolica;
	private double pressaoArterialDiastolica;
	private double saturacaoPerifericaO2;
	private double temperatura;
	
	
	public double getFrequenciaCardiaca() {
		return frequenciaCardiaca;
	}
	public void setFrequenciaCardiaca(double frequenciaCardiaca) {
		this.frequenciaCardiaca = frequenciaCardiaca;
	}
	public double getFrequenciaRespiratoria() {
		return frequenciaRespiratoria;
	}
	public void setFrequenciaRespiratoria(double frequenciaRespiratoria) {
		this.frequenciaRespiratoria = frequenciaRespiratoria;
	}
	public double getGlicemia() {
		return glicemia;
	}
	public void setGlicemia(double glicemia) {
		this.glicemia = glicemia;
	}
	public double getPeso() {
		return peso;
	}
	public void setPeso(double peso) {
		this.peso = peso;
	}
	public double getPressaoArterialSistolica() {
		return pressaoArterialSistolica;
	}
	public void setPressaoArterialSistolica(double pressaoArterialSistolica) {
		this.pressaoArterialSistolica = pressaoArterialSistolica;
	}
	public double getPressaoArterialDiastolica() {
		return pressaoArterialDiastolica;
	}
	public void setPressaoArterialDiastolica(double pressaoArterialDiastolica) {
		this.pressaoArterialDiastolica = pressaoArterialDiastolica;
	}
	public double getSaturacaoPerifericaO2() {
		return saturacaoPerifericaO2;
	}
	public void setSaturacaoPerifericaO2(double saturacaoPerifericaO2) {
		this.saturacaoPerifericaO2 = saturacaoPerifericaO2;
	}
	public double getTemperatura() {
		return temperatura;
	}
	public void setTemperatura(double temperatura) {
		this.temperatura = temperatura;
	}
	

}
