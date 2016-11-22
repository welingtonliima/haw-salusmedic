package br.com.haw.salusmedic.model;

import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.persistence.CascadeType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

@Entity
public class Paciente extends Pessoa {

	private String nomeDaMae;
	private String nomeDoPai;
	private String estadoCivil;
	private String raca;
	private String naturalidade;
	private String carteiraNacionalDaSaude;
	@Transient
	private int idade;
	@Embedded
	private CertidaoNascimento certidaoNascimento;
	private boolean status;
	@OneToOne (cascade = CascadeType.ALL)
	private Prontuario prontuario;

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
	
	public Prontuario getProntuario() {
		return prontuario;
	}

	public void setProntuario(Prontuario prontuario) {
		this.prontuario = prontuario;
	}

	public int getIdade() {
		Calendar dateOfBirth = new GregorianCalendar();
		dateOfBirth.setTime(getDataNascimento().getTime());
		Calendar today = Calendar.getInstance();
		int age = today.get(Calendar.YEAR) - dateOfBirth.get(Calendar.YEAR);
		dateOfBirth.add(Calendar.YEAR, age);
		if (today.before(dateOfBirth)) {
			age--;
		}
		return age;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}
}
