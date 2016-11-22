package br.com.haw.salusmedic.service;

import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.haw.salusmedic.dao.AtendimentoDao;
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
	
	@Autowired private AtendimentoDao atendimentoDao;
	@Autowired private PrestadorDao prestadorDao;
	@Autowired private TipoPrestadorDao tipoPrestadorDao;
	@Autowired private HospitalDao hospitalDao;
	@Autowired private TipoAtendimentoDao tipoAtendimentoDao;
	@Autowired private EspecialidadeDao especialidaDao;
	@Autowired private PacienteDao pacienteDao;

	public AtendimentoDao getAtendimentoDao() {
		return atendimentoDao;
	}

	public void setAtendimentoDao(AtendimentoDao atendimentoDao) {
		this.atendimentoDao = atendimentoDao;
	}

	public PrestadorDao getPrestadorDao() {
		return prestadorDao;
	}

	public void setPrestadorDao(PrestadorDao prestadorDao) {
		this.prestadorDao = prestadorDao;
	}

	public TipoPrestadorDao getTipoPrestadorDao() {
		return tipoPrestadorDao;
	}

	public void setTipoPrestadorDao(TipoPrestadorDao tipoPrestadorDao) {
		this.tipoPrestadorDao = tipoPrestadorDao;
	}

	public HospitalDao getHospitalDao() {
		return hospitalDao;
	}

	public void setHospitalDao(HospitalDao hospitalDao) {
		this.hospitalDao = hospitalDao;
	}

	public EspecialidadeDao getEspecialidaDao() {
		return especialidaDao;
	}

	public void setEspecialidaDao(EspecialidadeDao especialidaDao) {
		this.especialidaDao = especialidaDao;
	}

	public PacienteDao getPacienteDao() {
		return pacienteDao;
	}

	public void setPacienteDao(PacienteDao pacienteDao) {
		this.pacienteDao = pacienteDao;
	}

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

	public TipoAtendimentoDao getTipoAtendimentoDao() {
		return tipoAtendimentoDao;
	}

	public void setTipoAtendimentoDao(TipoAtendimentoDao tipoAtendimentoDao) {
		this.tipoAtendimentoDao = tipoAtendimentoDao;
	}
}
