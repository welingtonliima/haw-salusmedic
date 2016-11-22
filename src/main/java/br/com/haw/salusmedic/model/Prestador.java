package br.com.haw.salusmedic.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Prestador extends Pessoa {

	private String numeroConselho;
	@ManyToOne
	private TipoConselho tipoConselho;
	@ManyToOne
	private TipoPrestador tipoPrestador;
	@ManyToMany(fetch=FetchType.EAGER) 
	List<Especialidade> especialidades;
	@ManyToMany(fetch=FetchType.EAGER) 
	private List<Hospital> hospitais;
	
	
	public String getNumeroConselho() {
		return numeroConselho;
	}
	public void setNumeroConselho(String numeroConselho) {
		this.numeroConselho = numeroConselho;
	}
	public TipoConselho getTipoConselho() {
		return tipoConselho;
	}
	public void setTipoConselho(TipoConselho tipoConselho) {
		this.tipoConselho = tipoConselho;
	}
	public TipoPrestador getTipoPrestador() {
		return tipoPrestador;
	}
	public void setTipoPrestador(TipoPrestador tipoPrestador) {
		this.tipoPrestador = tipoPrestador;
	}
	public List<Especialidade> getEspecialidades() {
		return especialidades;
	}
	public void setEspecialidades(List<Especialidade> especialidades) {
		this.especialidades = especialidades;
	}
	public List<Hospital> getHospitais() {
		return hospitais;
	}
	public void setHospitais(List<Hospital> hospitais) {
		this.hospitais = hospitais;
	}
}
