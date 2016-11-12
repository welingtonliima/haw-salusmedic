package br.com.haw.salusmedic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.haw.salusmedic.model.Paciente;

@Repository
public interface PacienteDao extends JpaRepository<Paciente, Long>{

}
