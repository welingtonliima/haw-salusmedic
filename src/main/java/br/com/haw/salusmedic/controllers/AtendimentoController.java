package br.com.haw.salusmedic.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.haw.salusmedic.dao.AtendimentoDao;
import br.com.haw.salusmedic.model.Atendimento;
import br.com.haw.salusmedic.model.Diagnostico;
import br.com.haw.salusmedic.model.Especialidade;
import br.com.haw.salusmedic.model.Hospital;
import br.com.haw.salusmedic.model.Paciente;
import br.com.haw.salusmedic.model.Prestador;
import br.com.haw.salusmedic.model.TipoAtendimento;
import br.com.haw.salusmedic.propertyeditors.AtendimentoPropertyEditor;
import br.com.haw.salusmedic.service.AtendimentoService;

@Controller
@RequestMapping("/atendimento")
public class AtendimentoController {
    
    @Autowired private AtendimentoDao atendimentoDao;
    @Autowired private AtendimentoService atendimentoService;
    @Autowired private AtendimentoPropertyEditor atendimentoPropertyEditor;
    
    @InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(Paciente.class, atendimentoPropertyEditor.getPacientePropertyEditor());
		webDataBinder.registerCustomEditor(Prestador.class, atendimentoPropertyEditor.getPrestadorPropertyEditor());
		webDataBinder.registerCustomEditor(Hospital.class, atendimentoPropertyEditor.getHospitalPropertyEditor());
		webDataBinder.registerCustomEditor(TipoAtendimento.class, atendimentoPropertyEditor.getTipoAtendimentoPropertyEditor());
		webDataBinder.registerCustomEditor(Especialidade.class, atendimentoPropertyEditor.getEspecialidadePropertyEditor());
		webDataBinder.registerCustomEditor(Diagnostico.class, atendimentoPropertyEditor.getDiagnosticoPropertyEditor());
	}
    
    @RequestMapping(value ="form", name = "formAtendimento")
    public ModelAndView form(Atendimento atendimento) {
    	ModelAndView modelAndView = new ModelAndView("atendimento/form");
    	return modelAndView;
    }
    
    @RequestMapping (value = "/novoAtendimento", name="formAtendimentoPaciente")
    public ModelAndView fomAtendimento(Long idPaciente, Atendimento atendimento){
    	ModelAndView modelAndView = new ModelAndView("atendimento/form");
    	modelAndView.addObject("paciente", atendimentoService.getPaciente(idPaciente));
    	modelAndView.addObject("prestadores", atendimentoService.getPrestadores("MEDICO", 1L));
    	modelAndView.addObject("hospital", atendimentoService.getHospital(1L));
    	modelAndView.addObject("tipoAtendimentos", atendimentoService.getTipoAtendimentos());
    	modelAndView.addObject("especialidades", atendimentoService.getEspecialidades());
    	modelAndView.addObject("dataAndHoraAtual", atendimentoService.getDataHoraAtual());
    	return modelAndView;
    }

    @RequestMapping (value = "/detalhe/{id}", name="editarAtendimento")
    public ModelAndView detalhe(@PathVariable("id") Long id){
    	ModelAndView modelAndView = new ModelAndView("atendimento/form");
    	Atendimento atendimento = atendimentoDao.findOne(id);
    	modelAndView.addObject("atendimento",atendimento);
    	return modelAndView;
    }
    
    @RequestMapping(method = RequestMethod.POST, name = "adicionarAtendimento")
    public ModelAndView grava(Atendimento atendimento, RedirectAttributes redirectAttributes) {
        atendimentoDao.save(atendimento);
        redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("menssagem", "Especialiade cadastrada com sucesso!");
        return new ModelAndView("redirect:/atendimento");
    }
    
    @RequestMapping(method = RequestMethod.GET, name="listarAtendimento")
    public ModelAndView listar() {
        ModelAndView modelAndView = new ModelAndView("atendimento/lista");
        List<Atendimento> atendimentos = atendimentoDao.findAll();
        modelAndView.addObject("atendimentos", atendimentos);
        return modelAndView;
    }
    
    @RequestMapping (value = "/remove/{id}", name="removerAtendimento")
    public ModelAndView remover(@PathVariable("id") Long id, RedirectAttributes redirectAttributes){
    	Atendimento atendimento = atendimentoDao.findOne(id);
    	atendimentoDao.delete(atendimento);
    	redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("menssagem", "Especialiade excluida com sucesso!");
        return new ModelAndView("redirect:/atendimento");
    } 
    
    @RequestMapping(value = "/{tipoAtendimento}", name="listarTipoAtendimento")
    public ModelAndView listarTipoAtendimento(@PathVariable("tipoAtendimento") String tipoAtendimento) {
        ModelAndView modelAndView = new ModelAndView("atendimento/listarTipoAtendimento");
        TipoAtendimento tAtendimento = atendimentoService.getTipoAtendimentoDao().findByDescricao(tipoAtendimento);
        List<Atendimento> atendimentos = atendimentoDao.findByTipoAtendimento(atendimentoService.getTipoAtendimentoDao().findByDescricao(tipoAtendimento));
        modelAndView.addObject("atendimentos", atendimentos);
        modelAndView.addObject("tAtendimento", tAtendimento);
        modelAndView.addObject("tipoAtendimento", tipoAtendimento);
        return modelAndView;
    }
}
