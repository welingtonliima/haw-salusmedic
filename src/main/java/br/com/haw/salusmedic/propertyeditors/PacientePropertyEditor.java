package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.haw.salusmedic.dao.PacienteDao;
import br.com.haw.salusmedic.model.Paciente;

@Component
public class PacientePropertyEditor extends PropertyEditorSupport {
	
	@Autowired private PacienteDao pacienteDao;
	
	@Autowired private PerfilPropertyEditor perfilPropertyEditor;

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		long idPaciente = Long.parseLong(text);
		Paciente paciente = pacienteDao.findOne(idPaciente);
		setValue(paciente);
	}

	public PacienteDao getPacienteDao() {
		return pacienteDao;
	}

	public void setPacienteDao(PacienteDao pacienteDao) {
		this.pacienteDao = pacienteDao;
	}

	public PerfilPropertyEditor getPerfilPropertyEditor() {
		return perfilPropertyEditor;
	}

	public void setPerfilPropertyEditor(PerfilPropertyEditor perfilPropertyEditor) {
		this.perfilPropertyEditor = perfilPropertyEditor;
	}
}
