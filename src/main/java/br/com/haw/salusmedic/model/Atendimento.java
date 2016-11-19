package br.com.haw.salusmedic.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Atendimento {

	@Id @Column(name = "idAtendimento") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ManyToOne private Paciente paciente;
	@ManyToOne private Prestador prestador;
	@ManyToOne private Hospital hospital;
	@ManyToOne private TipoAtendimento tipoAtendimento;
	@ManyToOne private Especialidade especialidade;
	@DateTimeFormat @Temporal(value=TemporalType.TIMESTAMP) private Calendar dataAndHoraEntrada;
	@DateTimeFormat @Temporal(value=TemporalType.TIMESTAMP) private Calendar dataAndHoraSaida;
	@ManyToOne private Diagnostico diagnostico;
	
	private String localProcedencia;
	private String destino;
	private String status;
	private String observacao;
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
	public Hospital getHospital() {
		return hospital;
	}
	public void setHospital(Hospital hospital) {
		this.hospital = hospital;
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
	public Calendar getDataAndHoraEntrada() {
		return dataAndHoraEntrada;
	}
	public void setDataAndHoraEntrada(Calendar dataAndHoraEntrada) {
		this.dataAndHoraEntrada = dataAndHoraEntrada;
	}
	public Calendar getDataAndHoraSaida() {
		return dataAndHoraSaida;
	}
	public void setDataAndHoraSaida(Calendar dataAndHoraSaida) {
		this.dataAndHoraSaida = dataAndHoraSaida;
	}
	public Diagnostico getDiagnostico() {
		return diagnostico;
	}
	public void setDiagnostico(Diagnostico diagnostico) {
		this.diagnostico = diagnostico;
	}
	public String getLocalProcedencia() {
		return localProcedencia;
	}
	public void setLocalProcedencia(String localProcedencia) {
		this.localProcedencia = localProcedencia;
	}
	public String getDestino() {
		return destino;
	}
	public void setDestino(String destino) {
		this.destino = destino;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getObservacao() {
		return observacao;
	}
	public void setObservacao(String observacao) {
		this.observacao = observacao;
	} 
}
