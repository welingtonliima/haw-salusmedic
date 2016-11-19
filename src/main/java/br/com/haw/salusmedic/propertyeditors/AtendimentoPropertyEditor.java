package br.com.haw.salusmedic.propertyeditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AtendimentoPropertyEditor extends PropertyEditorSupport {
	
	@Autowired private PacientePropertyEditor pacientePropertyEditor;
	@Autowired private PrestadorPropertyEditor prestadorPropertyEditor;
	@Autowired private HospitalPropertyEditor hospitalPropertyEditor;
	@Autowired private TipoAtendimentoPropertyEditor tipoAtendimentoPropertyEditor;
	@Autowired private EspecialidadePropertyEditor especialidadePropertyEditor;
	@Autowired private DiagnosticoPropertyEditor diagnosticoPropertyEditor;
	
	public PacientePropertyEditor getPacientePropertyEditor() {
		return pacientePropertyEditor;
	}
	public void setPacientePropertyEditor(PacientePropertyEditor pacientePropertyEditor) {
		this.pacientePropertyEditor = pacientePropertyEditor;
	}
	public PrestadorPropertyEditor getPrestadorPropertyEditor() {
		return prestadorPropertyEditor;
	}
	public void setPrestadorPropertyEditor(PrestadorPropertyEditor prestadorPropertyEditor) {
		this.prestadorPropertyEditor = prestadorPropertyEditor;
	}
	public HospitalPropertyEditor getHospitalPropertyEditor() {
		return hospitalPropertyEditor;
	}
	public void setHospitalPropertyEditor(HospitalPropertyEditor hospitalPropertyEditor) {
		this.hospitalPropertyEditor = hospitalPropertyEditor;
	}
	public TipoAtendimentoPropertyEditor getTipoAtendimentoPropertyEditor() {
		return tipoAtendimentoPropertyEditor;
	}
	public void setTipoAtendimentoPropertyEditor(TipoAtendimentoPropertyEditor tipoAtendimentoPropertyEditor) {
		this.tipoAtendimentoPropertyEditor = tipoAtendimentoPropertyEditor;
	}
	public EspecialidadePropertyEditor getEspecialidadePropertyEditor() {
		return especialidadePropertyEditor;
	}
	public void setEspecialidadePropertyEditor(EspecialidadePropertyEditor especialidadePropertyEditor) {
		this.especialidadePropertyEditor = especialidadePropertyEditor;
	}
	public DiagnosticoPropertyEditor getDiagnosticoPropertyEditor() {
		return diagnosticoPropertyEditor;
	}
	public void setDiagnosticoPropertyEditor(DiagnosticoPropertyEditor diagnosticoPropertyEditor) {
		this.diagnosticoPropertyEditor = diagnosticoPropertyEditor;
	}
}
