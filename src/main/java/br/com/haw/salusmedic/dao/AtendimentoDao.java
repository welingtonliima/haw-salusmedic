package br.com.haw.salusmedic.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.haw.salusmedic.model.Atendimento;
import br.com.haw.salusmedic.model.TipoAtendimento;

@Repository
public interface AtendimentoDao extends JpaRepository<Atendimento, Long>{
	
	List<Atendimento> findByTipoAtendimento (TipoAtendimento tipoAtendimento);

}
