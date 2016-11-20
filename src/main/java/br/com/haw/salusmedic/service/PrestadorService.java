package br.com.haw.salusmedic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.haw.salusmedic.dao.EspecialidadeDao;
import br.com.haw.salusmedic.dao.HospitalDao;
import br.com.haw.salusmedic.dao.PerfilDao;
import br.com.haw.salusmedic.dao.PrestadorDao;
import br.com.haw.salusmedic.dao.TipoConselhoDao;
import br.com.haw.salusmedic.dao.TipoPrestadorDao;
import br.com.haw.salusmedic.model.Prestador;

@Service
public class PrestadorService {
	
	@Autowired private PrestadorDao prestadorDao;
	@Autowired private TipoPrestadorDao tipoPrestadorDao;
	@Autowired private TipoConselhoDao tipoConselhoDao;
	@Autowired private HospitalDao hospitalDao;
	@Autowired private EspecialidadeDao especialidadeDao;
	@Autowired private PerfilDao perfilDao;
	@Autowired private UsuarioService usuarioService;

	public Prestador getPrestadorLogado(){
		return prestadorDao.findOneByUsuario(usuarioService.getUsuarioLogado());
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
	public TipoConselhoDao getTipoConselhoDao() {
		return tipoConselhoDao;
	}
	public void setTipoConselhoDao(TipoConselhoDao tipoConselhoDao) {
		this.tipoConselhoDao = tipoConselhoDao;
	}
	public HospitalDao getHospitalDao() {
		return hospitalDao;
	}
	public void setHospitalDao(HospitalDao hospitalDao) {
		this.hospitalDao = hospitalDao;
	}
	public EspecialidadeDao getEspecialidadeDao() {
		return especialidadeDao;
	}
	public void setEspecialidadeDao(EspecialidadeDao especialidadeDao) {
		this.especialidadeDao = especialidadeDao;
	}
	public PerfilDao getPerfilDao() {
		return perfilDao;
	}
	public void setPerfilDao(PerfilDao perfilDao) {
		this.perfilDao = perfilDao;
	}
	public UsuarioService getUsuarioService() {
		return usuarioService;
	}
	public void setUsuarioService(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}
}
