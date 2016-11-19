package br.com.haw.salusmedic.service;

import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.haw.salusmedic.dao.EspecialidadeDao;
import br.com.haw.salusmedic.dao.HospitalDao;
import br.com.haw.salusmedic.dao.PacienteDao;
import br.com.haw.salusmedic.dao.PrestadorDao;
import br.com.haw.salusmedic.dao.TipoAtendimentoDao;
import br.com.haw.salusmedic.dao.TipoPrestadorDao;
import br.com.haw.salusmedic.model.Especialidade;
import br.com.haw.salusmedic.model.Hospital;
import br.com.haw.salusmedic.model.Paciente;
import br.com.haw.salusmedic.model.Prestador;
import br.com.haw.salusmedic.model.TipoAtendimento;
import br.com.haw.salusmedic.model.TipoPrestador;

@Service
public class AtendimentoService {
	
	@Autowired private PrestadorDao prestadorDao;
	@Autowired private TipoPrestadorDao tipoPrestadorDao;
	@Autowired private HospitalDao hospitalDao;
	@Autowired private TipoAtendimentoDao tipoAtendimentoDao;
	@Autowired private EspecialidadeDao especialidaDao;
	@Autowired private PacienteDao pacienteDao;

	public Paciente getPaciente(Long idPaciente){
		return pacienteDao.findOne(idPaciente);
	}
	
	public List<Prestador> getPrestadores (String descriscao, Long idHospital){
		Hospital hospital = getHospital(idHospital);
		TipoPrestador novoTipoPrestador = tipoPrestadorDao.findOneByDescricao(descriscao);
		return prestadorDao.findByTipoPrestadorAndHospitais(novoTipoPrestador, hospital);
	}
	
	public Hospital getHospital(Long idHospital){
		return hospitalDao.findOne(idHospital);
	}
	
	public List<TipoAtendimento> getTipoAtendimentos(){
		return tipoAtendimentoDao.findAll();
	}
	
	public List<Especialidade> getEspecialidades(){
		return especialidaDao.findAll();
	}
	
	public String getDataHoraAtual(){
		Locale locale = new Locale("pt", "BR");
		GregorianCalendar calendar = new GregorianCalendar();
		SimpleDateFormat sdf = new SimpleDateFormat("dd'/'MM'/'yyyy' 'HH':'mm",locale); 
		return sdf.format(calendar.getTime());
	}
}
