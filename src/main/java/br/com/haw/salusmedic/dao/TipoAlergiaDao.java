package br.com.haw.salusmedic.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.haw.salusmedic.model.TipoAlergia;

public interface TipoAlergiaDao extends JpaRepository<TipoAlergia, Long> {

}
