package br.com.haw.salusmedic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.haw.salusmedic.model.TipoAtendimento;

@Repository
public interface TipoAtendimentoDao extends JpaRepository<TipoAtendimento, Long> {
	
	TipoAtendimento findByDescricao (String descricao);
}
