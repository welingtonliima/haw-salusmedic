package br.com.haw.salusmedic.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.haw.salusmedic.model.Diagnostico;

public interface DiagnosticoDao extends JpaRepository<Diagnostico, Long>{

}
