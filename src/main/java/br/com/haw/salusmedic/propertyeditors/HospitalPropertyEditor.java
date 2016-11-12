package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.haw.salusmedic.dao.HospitalDao;
import br.com.haw.salusmedic.model.Hospital;

@Component
public class HospitalPropertyEditor extends PropertyEditorSupport {

	@Autowired 
	private HospitalDao hospitalDao;
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		long idHospital = Long.parseLong(text);
		Hospital hospital = hospitalDao.findOne(idHospital);
		setValue(hospital);
	}
}
