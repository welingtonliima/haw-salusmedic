package br.com.haw.salusmedic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PacienteService {
	
	@Autowired private UsuarioService usuarioService;
	@Autowired private ProntuarioService prontuarioService;

	public UsuarioService getUsuarioService() {
		return usuarioService;
	}

	public void setUsuarioService(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}

	public ProntuarioService getProntuarioService() {
		return prontuarioService;
	}

	public void setProntuarioService(ProntuarioService prontuarioService) {
		this.prontuarioService = prontuarioService;
	}
}
