package br.com.haw.salusmedic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.haw.salusmedic.model.Alergia;

@Repository
public interface AlergiaDao extends JpaRepository<Alergia, Long>{
	
}
