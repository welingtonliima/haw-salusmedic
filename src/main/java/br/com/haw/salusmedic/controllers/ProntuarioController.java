package br.com.haw.salusmedic.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.haw.salusmedic.model.Atendimento;
import br.com.haw.salusmedic.model.Paciente;
import br.com.haw.salusmedic.model.Perfil;
import br.com.haw.salusmedic.propertyeditors.PacientePropertyEditor;
import br.com.haw.salusmedic.service.ProntuarioService;
import br.com.haw.salusmedic.validation.PacienteValidation;

@Controller
@RequestMapping("/prontuario")
public class ProntuarioController {

	@Autowired
	private ProntuarioService prontuarioService;

	@RequestMapping(value = "form", name = "formProntuario")
	public ModelAndView form() {
		ModelAndView modelAndView = new ModelAndView("prontuario/detalhe");
		return modelAndView;
	}

	@RequestMapping(value = "/{id}", name = "prontuarioEletronico")
	public ModelAndView detalhe(@PathVariable("id") Long id) {
		ModelAndView modelAndView = new ModelAndView("prontuario/detalhe");
		modelAndView.addObject("atendimento", prontuarioService.getAtendimentoService().getAtendimentoDao().findOne(id));
		return modelAndView;
	}
	
    @RequestMapping(value = "/alterarHistoriaClinicaPaciente", name="alterarHistoriaClinica")
    public ModelAndView alterarHistoriaClinicaPaciente(Atendimento atendimento) {
        System.out.println("Chegou Aqui");
        System.out.println(atendimento.getPaciente().getId());
        System.out.println(atendimento.getPaciente().getProntuario().getId());
        System.out.println(atendimento.getPaciente().getProntuario().getHistoriaClinica().isAsma());
    	//prontuarioService.getProntuariorDao().save(atendimento.getPaciente().getProntuario());
        //return detalhe(atendimento.getId());
        return detalhe(3L);
    }

}
