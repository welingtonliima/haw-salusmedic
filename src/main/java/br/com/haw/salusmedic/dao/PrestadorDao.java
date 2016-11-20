package br.com.haw.salusmedic.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.haw.salusmedic.model.Hospital;
import br.com.haw.salusmedic.model.Prestador;
import br.com.haw.salusmedic.model.TipoPrestador;
import br.com.haw.salusmedic.model.Usuario;

@Repository
public interface PrestadorDao extends JpaRepository<Prestador, Long>{

	Prestador findOneByUsuario(Usuario usuario);
	
	List<Prestador> findByTipoPrestadorAndHospitais(TipoPrestador tipoPrestador, Hospital hospital);
}
