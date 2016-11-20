package br.com.haw.salusmedic.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Alergia {
	
	@Id @Column(name = "idAlergia") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	private TipoAlergia tipoAlergia;
	private String observacao;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public TipoAlergia getTipoAlergia() {
		return tipoAlergia;
	}
	public void setTipoAlergia(TipoAlergia tipoAlergia) {
		this.tipoAlergia = tipoAlergia;
	}
	public String getObservacao() {
		return observacao;
	}
	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
}
