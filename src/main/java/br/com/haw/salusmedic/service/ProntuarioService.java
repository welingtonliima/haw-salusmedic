package br.com.haw.salusmedic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.haw.salusmedic.dao.ProntuarioDao;
import br.com.haw.salusmedic.model.HistoriaClinica;
import br.com.haw.salusmedic.model.Prontuario;

@Service
public class ProntuarioService {

	@Autowired private ProntuarioDao prontuariorDao;

	public Prontuario criarProntuario(){
		HistoriaClinica historiaClinica = new HistoriaClinica();
		historiaClinica.setAvc(false);
		historiaClinica.setAsma(false);
		historiaClinica.setCancer(false);
		historiaClinica.setCoracao(false);
		historiaClinica.setDesnutricao(false);
		historiaClinica.setDiabetes(false);
		historiaClinica.setHipertensaoArterial(false);
		historiaClinica.setInfarto(false);
		historiaClinica.setObsidadde(false);		
		historiaClinica.setSaudeMental(false);
		historiaClinica.setUsarioAlcool(false);	
		historiaClinica.setUsuarioDeDrogas(false);	
		historiaClinica.setTabagismo(false);	
		
		Prontuario novoProntuario = new Prontuario();
		novoProntuario.setDoadorOrgaos(false);
		novoProntuario.setTipoSanguineo(null);
		novoProntuario.setHistoricaClinica(historiaClinica);
		return novoProntuario;
	}
	
	
	public ProntuarioDao getProntuariorDao() {
		return prontuariorDao;
	}

	public void setProntuariorDao(ProntuarioDao prontuariorDao) {
		this.prontuariorDao = prontuariorDao;
	}
}
