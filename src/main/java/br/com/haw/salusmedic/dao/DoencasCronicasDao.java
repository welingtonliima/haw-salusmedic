package br.com.haw.salusmedic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.haw.salusmedic.model.DoencasCronicas;

@Repository
public interface DoencasCronicasDao extends JpaRepository<DoencasCronicas, Long>{

}
