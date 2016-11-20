package br.com.haw.salusmedic.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class HistoriaClinica {
	
	@Id @Column(name = "idHistoriaClinica") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private boolean avc;
	private boolean asma;
	private boolean cancer;
	private boolean coracao;
	private boolean desnutricao;
	private boolean diabetes;
	private boolean hipertensaoArterial;
	private boolean infarto;
	private boolean obsidadde;
	private boolean saudeMental;
	private boolean usarioAlcool;
	private boolean usuarioDeDrogas;
	private boolean tabagismo;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public boolean isAvc() {
		return avc;
	}
	public void setAvc(boolean avc) {
		this.avc = avc;
	}
	public boolean isAsma() {
		return asma;
	}
	public void setAsma(boolean asma) {
		this.asma = asma;
	}
	public boolean isCancer() {
		return cancer;
	}
	public void setCancer(boolean cancer) {
		this.cancer = cancer;
	}
	public boolean isCoracao() {
		return coracao;
	}
	public void setCoracao(boolean coracao) {
		this.coracao = coracao;
	}
	public boolean isDesnutricao() {
		return desnutricao;
	}
	public void setDesnutricao(boolean desnutricao) {
		this.desnutricao = desnutricao;
	}
	public boolean isDiabetes() {
		return diabetes;
	}
	public void setDiabetes(boolean diabetes) {
		this.diabetes = diabetes;
	}
	public boolean isHipertensaoArterial() {
		return hipertensaoArterial;
	}
	public void setHipertensaoArterial(boolean hipertensaoArterial) {
		this.hipertensaoArterial = hipertensaoArterial;
	}
	public boolean isInfarto() {
		return infarto;
	}
	public void setInfarto(boolean infarto) {
		this.infarto = infarto;
	}
	public boolean isObsidadde() {
		return obsidadde;
	}
	public void setObsidadde(boolean obsidadde) {
		this.obsidadde = obsidadde;
	}
	public boolean isSaudeMental() {
		return saudeMental;
	}
	public void setSaudeMental(boolean saudeMental) {
		this.saudeMental = saudeMental;
	}
	public boolean isUsarioAlcool() {
		return usarioAlcool;
	}
	public void setUsarioAlcool(boolean usarioAlcool) {
		this.usarioAlcool = usarioAlcool;
	}
	public boolean isUsuarioDeDrogas() {
		return usuarioDeDrogas;
	}
	public void setUsuarioDeDrogas(boolean usuarioDeDrogas) {
		this.usuarioDeDrogas = usuarioDeDrogas;
	}
	public boolean isTabagismo() {
		return tabagismo;
	}
	public void setTabagismo(boolean tabagismo) {
		this.tabagismo = tabagismo;
	}
}
