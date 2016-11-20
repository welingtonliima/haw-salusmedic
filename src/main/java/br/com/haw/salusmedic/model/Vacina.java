package br.com.haw.salusmedic.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Vacina {
	
	@Id @Column(name = "idVacina") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	private TipoVacina tipoVacina;
	private String nomeResponsavel;
	private String localAplicacao;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public TipoVacina getTipoVacina() {
		return tipoVacina;
	}
	public void setTipoVacina(TipoVacina tipoVacina) {
		this.tipoVacina = tipoVacina;
	}
	public String getNomeResponsavel() {
		return nomeResponsavel;
	}
	public void setNomeResponsavel(String nomeResponsavel) {
		this.nomeResponsavel = nomeResponsavel;
	}
	public String getLocalAplicacao() {
		return localAplicacao;
	}
	public void setLocalAplicacao(String localAplicacao) {
		this.localAplicacao = localAplicacao;
	}
}
