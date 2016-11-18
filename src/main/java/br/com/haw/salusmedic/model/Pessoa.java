package br.com.haw.salusmedic.model;

import java.util.Calendar;

import javax.persistence.CascadeType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
public abstract class Pessoa {

	@Id @GeneratedValue(strategy=GenerationType.TABLE)
	private Long id;
	private String nome;
	@DateTimeFormat @Temporal(TemporalType.DATE)
	private Calendar dataNascimento;
	private String sexo;
	private String cpf;
	private String nacionalidade;
	@Embedded
	private CarteiraDeIdentidade carteiraDeIdentidade;
	@OneToOne (cascade = CascadeType.ALL)
	private Endereco endereco;
	@OneToOne (cascade = CascadeType.ALL)
	private Contato contato;
	@OneToOne (cascade = CascadeType.ALL)
	private Usuario usuario;

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Calendar getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getNacionalidade() {
		return nacionalidade;
	}

	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	public CarteiraDeIdentidade getCarteiraDeIdentidade() {
		return carteiraDeIdentidade;
	}

	public void setCarteiraDeIdentidade(CarteiraDeIdentidade carteiraDeIdentidade) {
		this.carteiraDeIdentidade = carteiraDeIdentidade;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public Contato getContato() {
		return contato;
	}

	public void setContato(Contato contato) {
		this.contato = contato;
	}
	
}
