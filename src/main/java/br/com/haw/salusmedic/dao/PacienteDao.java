package br.com.haw.salusmedic.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.haw.salusmedic.model.Paciente;

@Repository
public interface PacienteDao extends JpaRepository<Paciente, Long>{
	
	List<Paciente> findByCarteiraNacionalDaSaudeOrCpfOrNomeLike (String carteiraNacionalDaSaude, String cpf, String nome);

	List<Paciente> findAllByOrderByNomeAsc();

	Paciente findByCpf(String cpfPaciente);
	
}
