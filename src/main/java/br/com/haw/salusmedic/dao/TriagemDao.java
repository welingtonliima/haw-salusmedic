package br.com.haw.salusmedic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.haw.salusmedic.model.Triagem;

@Repository
public interface TriagemDao extends JpaRepository<Triagem, Long> {


}
