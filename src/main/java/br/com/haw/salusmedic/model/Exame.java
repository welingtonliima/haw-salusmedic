package br.com.haw.salusmedic.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Exame {
	
	@Id @Column(name = "idExame") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	private TipoExame tipoExame;
	private String resultado;
	private Calendar dataEhoraRealizacao;
	private String nomeDoResponsavel;
	private String status;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public TipoExame getTipoExame() {
		return tipoExame;
	}
	public void setTipoExame(TipoExame tipoExame) {
		this.tipoExame = tipoExame;
	}
	public String getResultado() {
		return resultado;
	}
	public void setResultado(String resultado) {
		this.resultado = resultado;
	}
	
	public Calendar getDataEhoraRealizacao() {
		return dataEhoraRealizacao;
	}
	public void setDataEhoraRealizacao(Calendar dataEhoraRealizacao) {
		this.dataEhoraRealizacao = dataEhoraRealizacao;
	}
	public String getNomeDoResponsavel() {
		return nomeDoResponsavel;
	}
	public void setNomeDoResponsavel(String nomeDoResponsavel) {
		this.nomeDoResponsavel = nomeDoResponsavel;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
