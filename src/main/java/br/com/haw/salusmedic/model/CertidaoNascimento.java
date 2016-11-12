package br.com.haw.salusmedic.model;

import java.util.Calendar;

import javax.persistence.Embeddable;

@Embeddable
public class CertidaoNascimento {
	
	private String numeroCertidaoNascimento;
	private String cartorio;
	private String livro;
	private String folha;
	private Calendar dataEmissao;
	
	public String getNumeroCertidaoNascimento() {
		return numeroCertidaoNascimento;
	}
	public void setNumeroCertidaoNascimento(String numeroCertidaoNascimento) {
		this.numeroCertidaoNascimento = numeroCertidaoNascimento;
	}
	public String getCartorio() {
		return cartorio;
	}
	public void setCartorio(String cartorio) {
		this.cartorio = cartorio;
	}
	public String getLivro() {
		return livro;
	}
	public void setLivro(String livro) {
		this.livro = livro;
	}
	public String getFolha() {
		return folha;
	}
	public void setFolha(String folha) {
		this.folha = folha;
	}
	public Calendar getDataEmissao() {
		return dataEmissao;
	}
	public void setDataEmissao(Calendar dataEmissao) {
		this.dataEmissao = dataEmissao;
	}
}
