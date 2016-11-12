package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.haw.salusmedic.dao.EspecialidadeDao;
import br.com.haw.salusmedic.model.Especialidade;

@Component
public class EspecialidadePropertyEditor extends PropertyEditorSupport {
	
	@Autowired 
	private EspecialidadeDao especialidadeDao;
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		long idEspecialidade = Long.parseLong(text);
		Especialidade especialidade = especialidadeDao.findOne(idEspecialidade);
		setValue(especialidade);
	}

}
