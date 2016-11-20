package br.com.haw.salusmedic.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TipoRegistroClinico {
	
	@Id @Column(name = "idTipoRegistroClinco") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String descriscao;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDescriscao() {
		return descriscao;
	}
	public void setDescriscao(String descriscao) {
		this.descriscao = descriscao;
	}
}
