package br.com.haw.salusmedic.model;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Triagem {
	
    @Id@GeneratedValue(strategy=GenerationType.IDENTITY)	
	private long id;
    @Embedded
	private AbordagemInicial abordagemInicial;
    @OneToOne
    private TipoAlergia alergias;
    @Embedded
    private SinaisVitais sinaisVitais;
    @Embedded
    private AvaliacaoInicial avaliacaoInicial;

	public AvaliacaoInicial getAvaliacaoInicial() {
		return avaliacaoInicial;
	}

	public void setAvaliacaoInicial(AvaliacaoInicial avaliacaoInicial) {
		this.avaliacaoInicial = avaliacaoInicial;
	}

	public SinaisVitais getSinaisVitais() {
		return sinaisVitais;
	}

	public void setSinaisVitais(SinaisVitais sinaisVitais) {
		this.sinaisVitais = sinaisVitais;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public AbordagemInicial getAbordagemInicial() {
		return abordagemInicial;
	}

	public void setAbordagemInicial(AbordagemInicial abordagemInicial) {
		this.abordagemInicial = abordagemInicial;
	}

	public TipoAlergia getAlergias() {
		return alergias;
	}

	public void setAlergias(TipoAlergia alergias) {
		this.alergias = alergias;
	}
	
	

}
