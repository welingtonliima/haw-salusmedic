package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.haw.salusmedic.dao.TipoConselhoDao;
import br.com.haw.salusmedic.model.TipoConselho;

@Component
public class TipoConselhoPropertyEditor extends PropertyEditorSupport{
	
	@Autowired
	private TipoConselhoDao tipoConselhoDao;
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		long idTipoConselho = Long.parseLong(text);
		TipoConselho tipoConselho = tipoConselhoDao.findOne(idTipoConselho);
		setValue(tipoConselho);
	}
}
