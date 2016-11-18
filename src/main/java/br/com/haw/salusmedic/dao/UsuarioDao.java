package br.com.haw.salusmedic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.haw.salusmedic.model.Usuario;

@Repository
public interface UsuarioDao extends JpaRepository<Usuario, Long>{

	Usuario findOneByLogin(String login);
	
}
