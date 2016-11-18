package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.haw.salusmedic.dao.PerfilDao;
import br.com.haw.salusmedic.model.Perfil;

@Component
public class PerfilPropertyEditor extends PropertyEditorSupport {
	
	@Autowired
	private PerfilDao perfilDao;
	
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		long idPerfil = Long.parseLong(text);
		Perfil perfil = perfilDao.findOne(idPerfil);
		setValue(perfil);
	}

}
