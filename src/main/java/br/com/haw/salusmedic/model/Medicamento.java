package br.com.haw.salusmedic.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
@Entity
public class Medicamento {
	
	@Id @Column(name = "idMedicamento") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	private TipoMedicamento tipoMedicamento;
	private double quantidade;
	private String amp;
	private String formaDeAplicacacao;
	private String frequencia;
	private String observacao;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public TipoMedicamento getTipoMedicamento() {
		return tipoMedicamento;
	}
	public void setTipoMedicamento(TipoMedicamento tipoMedicamento) {
		this.tipoMedicamento = tipoMedicamento;
	}
	public double getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(double quantidade) {
		this.quantidade = quantidade;
	}
	public String getAmp() {
		return amp;
	}
	public void setAmp(String amp) {
		this.amp = amp;
	}
	public String getFormaDeAplicacacao() {
		return formaDeAplicacacao;
	}
	public void setFormaDeAplicacacao(String formaDeAplicacacao) {
		this.formaDeAplicacacao = formaDeAplicacacao;
	}
	public String getFrequencia() {
		return frequencia;
	}
	public void setFrequencia(String frequencia) {
		this.frequencia = frequencia;
	}
	public String getObservacao() {
		return observacao;
	}
	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
}
