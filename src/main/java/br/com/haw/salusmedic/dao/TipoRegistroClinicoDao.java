package br.com.haw.salusmedic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.haw.salusmedic.model.TipoRegistroClinico;

@Repository
public interface TipoRegistroClinicoDao extends JpaRepository<TipoRegistroClinico, Long>{

}
