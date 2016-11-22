package br.com.haw.salusmedic.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Prontuario {

	@Id @Column(name = "idProntuario") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
    private String tipoSanguineo;
    private boolean doadorOrgaos;
    
    @Embedded
    private HistoriaClinica historiaClinica;
    @OneToMany
    private List<DoencasCronicas> doencasCronicas;
    @OneToMany
    private List<Medicamento> medicamento;
    @OneToMany
    private List<Alergia> alergias;
    @OneToMany
    private List<Exame> exames;
    @OneToMany
    private List<Vacina> vacinas;
    @OneToMany
    private List<RegistroClinco> registrosClinicos;
    
    public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTipoSanguineo() {
		return tipoSanguineo;
	}
	public void setTipoSanguineo(String tipoSanguineo) {
		this.tipoSanguineo = tipoSanguineo;
	}
	public boolean isDoadorOrgaos() {
		return doadorOrgaos;
	}
	public void setDoadorOrgaos(boolean doadorOrgaos) {
		this.doadorOrgaos = doadorOrgaos;
	}
	public HistoriaClinica getHistoriaClinica() {
		return historiaClinica;
	}
	public void setHistoriaClinica(HistoriaClinica historiaClinica) {
		this.historiaClinica = historiaClinica;
	}
	public List<DoencasCronicas> getDoencasCronicas() {
		return doencasCronicas;
	}
	public void setDoencasCronicas(List<DoencasCronicas> doencasCronicas) {
		this.doencasCronicas = doencasCronicas;
	}
	public List<Medicamento> getMedicamento() {
		return medicamento;
	}
	public void setMedicamento(List<Medicamento> medicamento) {
		this.medicamento = medicamento;
	}
	public List<Alergia> getAlergias() {
		return alergias;
	}
	public void setAlergias(List<Alergia> alergias) {
		this.alergias = alergias;
	}
	public List<RegistroClinco> getRegistrosClinicos() {
		return registrosClinicos;
	}
	public void setRegistrosClinicos(List<RegistroClinco> registrosClinicos) {
		this.registrosClinicos = registrosClinicos;
	}
	public List<Exame> getExames() {
		return exames;
	}
	public void setExames(List<Exame> exames) {
		this.exames = exames;
	}
	public List<Vacina> getVacinas() {
		return vacinas;
	}
	public void setVacinas(List<Vacina> vacinas) {
		this.vacinas = vacinas;
	}
}
