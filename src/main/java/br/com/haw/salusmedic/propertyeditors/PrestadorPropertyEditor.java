package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.stereotype.Component;

import br.com.haw.salusmedic.dao.PrestadorDao;
import br.com.haw.salusmedic.model.Prestador;

@Component
public class PrestadorPropertyEditor extends PropertyEditorSupport {

	private PrestadorDao prestadorDao;
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		long idPrestador = Long.parseLong(text);
		Prestador prestador = prestadorDao.findOne(idPrestador);
		setValue(prestador);
	}
}
