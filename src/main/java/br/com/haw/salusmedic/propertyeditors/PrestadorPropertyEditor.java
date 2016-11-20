package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.haw.salusmedic.dao.PrestadorDao;
import br.com.haw.salusmedic.model.Prestador;

@Component
public class PrestadorPropertyEditor extends PropertyEditorSupport {

	@Autowired private PrestadorDao prestadorDao;
	@Autowired private EspecialidadePropertyEditor especialidadePropertyEditor;
	@Autowired private HospitalPropertyEditor hospitalPropertyEditor;
	@Autowired private PerfilPropertyEditor perfilPropertyEditor;
	@Autowired private TipoPrestadorPropertyEditor tipoPrestadorPropertyEditor;
	@Autowired private TipoConselhoPropertyEditor tipoConselhoPropertyEditor;
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		long idPrestador = Long.parseLong(text);
		Prestador prestador = prestadorDao.findOne(idPrestador);
		setValue(prestador);
	}

	public PrestadorDao getPrestadorDao() {
		return prestadorDao;
	}

	public void setPrestadorDao(PrestadorDao prestadorDao) {
		this.prestadorDao = prestadorDao;
	}

	public EspecialidadePropertyEditor getEspecialidadePropertyEditor() {
		return especialidadePropertyEditor;
	}

	public void setEspecialidadePropertyEditor(EspecialidadePropertyEditor especialidadePropertyEditor) {
		this.especialidadePropertyEditor = especialidadePropertyEditor;
	}

	public HospitalPropertyEditor getHospitalPropertyEditor() {
		return hospitalPropertyEditor;
	}

	public void setHospitalPropertyEditor(HospitalPropertyEditor hospitalPropertyEditor) {
		this.hospitalPropertyEditor = hospitalPropertyEditor;
	}

	public PerfilPropertyEditor getPerfilPropertyEditor() {
		return perfilPropertyEditor;
	}

	public void setPerfilPropertyEditor(PerfilPropertyEditor perfilPropertyEditor) {
		this.perfilPropertyEditor = perfilPropertyEditor;
	}

	public TipoPrestadorPropertyEditor getTipoPrestadorPropertyEditor() {
		return tipoPrestadorPropertyEditor;
	}

	public void setTipoPrestadorPropertyEditor(TipoPrestadorPropertyEditor tipoPrestadorPropertyEditor) {
		this.tipoPrestadorPropertyEditor = tipoPrestadorPropertyEditor;
	}

	public TipoConselhoPropertyEditor getTipoConselhoPropertyEditor() {
		return tipoConselhoPropertyEditor;
	}

	public void setTipoConselhoPropertyEditor(TipoConselhoPropertyEditor tipoConselhoPropertyEditor) {
		this.tipoConselhoPropertyEditor = tipoConselhoPropertyEditor;
	}
}
