package br.com.haw.salusmedic.model;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.OneToOne;

@Entity
public class Paciente extends Pessoa{

	private String nomeDaMae;
	private String nomeDoPai;
	private String estadoCivil;
	private String raca;
	private String naturalidade;
	private String carteiraNacionalDaSaude;
	@Embedded
	private CertidaoNascimento certidaoNascimento;
	@OneToOne(mappedBy="paciente")
    private Prontuario prontuario;
	private boolean status;
	
	public String getNomeDaMae() {
		return nomeDaMae;
	}
	public void setNomeDaMae(String nomeDaMae) {
		this.nomeDaMae = nomeDaMae;
	}
	public String getNomeDoPai() {
		return nomeDoPai;
	}
	public void setNomeDoPai(String nomeDoPai) {
		this.nomeDoPai = nomeDoPai;
	}
	public String getEstadoCivil() {
		return estadoCivil;
	}
	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}
	public String getNaturalidade() {
		return naturalidade;
	}
	public void setNaturalidade(String naturalidade) {
		this.naturalidade = naturalidade;
	}
	public String getCarteiraNacionalDaSaude() {
		return carteiraNacionalDaSaude;
	}
	public void setCarteiraNacionalDaSaude(String carteiraNacionalDaSaude) {
		this.carteiraNacionalDaSaude = carteiraNacionalDaSaude;
	}
	public CertidaoNascimento getCertidaoNascimento() {
		return certidaoNascimento;
	}
	public void setCertidaoNascimento(CertidaoNascimento certidaoNascimento) {
		this.certidaoNascimento = certidaoNascimento;
	}
	public Prontuario getProntuario() {
		return prontuario;
	}
	public void setProntuario(Prontuario prontuario) {
		this.prontuario = prontuario;
	}
	public String getRaca() {
		return raca;
	}
	public void setRaca(String raca) {
		this.raca = raca;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
}
