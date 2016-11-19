package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.stereotype.Component;

import br.com.haw.salusmedic.dao.TipoAtendimentoDao;
import br.com.haw.salusmedic.model.TipoAtendimento;

@Component
public class TipoAtendimentoPropertyEditor extends PropertyEditorSupport{

	private TipoAtendimentoDao tipoAtendimentoDao;
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		long idTipoAtendimetno = Long.parseLong(text);
		TipoAtendimento tipoAtendimento = tipoAtendimentoDao.findOne(idTipoAtendimetno);
		setValue(tipoAtendimento);
	}
}
