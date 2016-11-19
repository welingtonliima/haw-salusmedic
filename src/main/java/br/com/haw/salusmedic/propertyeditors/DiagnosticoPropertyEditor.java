package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.haw.salusmedic.dao.DiagnosticoDao;
import br.com.haw.salusmedic.model.Diagnostico;

@Component
public class DiagnosticoPropertyEditor extends PropertyEditorSupport {

	@Autowired 
	private DiagnosticoDao diagnosticoDao;
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		long idDiagnostico = Long.parseLong(text);
		Diagnostico diagnostico = diagnosticoDao.findOne(idDiagnostico);
		setValue(diagnostico);
	}
}
