package br.com.haw.salusmedic.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class RegistroClinco {
	
	@Id @Column(name = "idRegistroClinco") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	private TipoRegistroClinico tipoRegistroClinico;
	@ManyToOne
	private Atendimento atendimento;
	@ManyToOne
	private Prestador prestador;
	private Calendar dataHoraAssinatura;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public TipoRegistroClinico getTipoRegistroClinico() {
		return tipoRegistroClinico;
	}
	public void setTipoRegistroClinico(TipoRegistroClinico tipoRegistroClinico) {
		this.tipoRegistroClinico = tipoRegistroClinico;
	}
	public Atendimento getAtendimento() {
		return atendimento;
	}
	public void setAtendimento(Atendimento atendimento) {
		this.atendimento = atendimento;
	}
	public Prestador getPrestador() {
		return prestador;
	}
	public void setPrestador(Prestador prestador) {
		this.prestador = prestador;
	}
	public Calendar getDataHoraAssinatura() {
		return dataHoraAssinatura;
	}
	public void setDataHoraAssinatura(Calendar dataHoraAssinatura) {
		this.dataHoraAssinatura = dataHoraAssinatura;
	}
}
