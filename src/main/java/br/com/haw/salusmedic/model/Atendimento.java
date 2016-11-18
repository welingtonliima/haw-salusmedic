package br.com.haw.salusmedic.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

import br.com.haw.salusmedic.enume.LocalProcedencia;
import br.com.haw.salusmedic.enume.TipoAtendimento;

@Entity
public class Atendimento {

	@Id @Column(name = "idAtendimento") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
/*	@ManyToOne
	private Paciente paciente;
	@ManyToMany
	private Prestador prestador;
	@ManyToOne
	private TipoAtendimento tipoAtendimento;
	@ManyToOne
	private LocalProcedencia localProcedencia;
	@DateTimeFormat 
	private Calendar dataEntrada;
	@DateTimeFormat
	private Calendar dataSaida;
	@ManyToOne
	private Especialidade especialidade;
	@ManyToOne
	private Diagnostico diagnostico;
	private String status;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Paciente getPaciente() {
		return paciente;
	}
	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
	public Prestador getPrestador() {
		return prestador;
	}
	public void setPrestador(Prestador prestador) {
		this.prestador = prestador;
	}
	public TipoAtendimento getTipoAtendimento() {
		return tipoAtendimento;
	}
	public void setTipoAtendimento(TipoAtendimento tipoAtendimento) {
		this.tipoAtendimento = tipoAtendimento;
	}
	public Especialidade getEspecialidade() {
		return especialidade;
	}
	public void setEspecialidade(Especialidade especialidade) {
		this.especialidade = especialidade;
	}
	public Diagnostico getDiagnostico() {
		return diagnostico;
	}
	public void setDiagnostico(Diagnostico diagnostico) {
		this.diagnostico = diagnostico;
	}*/
}
