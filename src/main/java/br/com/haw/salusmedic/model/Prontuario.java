package br.com.haw.salusmedic.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Prontuario {

	@Id @Column(name = "idProntuario") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
    @OneToOne
	private Paciente paciente;
}
