package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.haw.salusmedic.dao.TipoPrestadorDao;
import br.com.haw.salusmedic.model.TipoPrestador;

@Component
public class TipoPrestadorPropertyEditor extends PropertyEditorSupport {

	@Autowired
	private TipoPrestadorDao tipoPrestadorDao;

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		long idTipoPrestador = Long.parseLong(text);
		TipoPrestador tipoPrestador = tipoPrestadorDao.findOne(idTipoPrestador);
		setValue(tipoPrestador);
	}

}
