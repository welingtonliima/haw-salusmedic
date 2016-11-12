package br.com.haw.salusmedic.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.haw.salusmedic.dao.PacienteDao;
import br.com.haw.salusmedic.model.Paciente;

@Controller
@RequestMapping("/paciente")
public class PacienteController {

	@Autowired
    private PacienteDao pacienteDao;
    
    @RequestMapping(value = "form", name = "formPaciente")
    public ModelAndView form(Paciente paciente) {
        return new ModelAndView("paciente/form");
    }

    @RequestMapping (value = "/detalhe/{id}", name="editarPaciente")
    public ModelAndView detalhe(@PathVariable("id") Long id){
    	ModelAndView modelAndView = new ModelAndView("paciente/form");
    	Paciente paciente = pacienteDao.findOne(id);
    	modelAndView.addObject("paciente",paciente);
    	return modelAndView;
    }
    
    @RequestMapping(method = RequestMethod.POST, name = "adiconarPaciente")
    public ModelAndView grava(Paciente paciente, RedirectAttributes redirectAttributes) {
    	pacienteDao.save(paciente);
        redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("menssagem", "Paciente cadastrado com sucesso!");
        return new ModelAndView("redirect:/paciente");
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView listar() {
        List<Paciente> pacientes = pacienteDao.findAll();
        ModelAndView modelAndView = new ModelAndView("paciente/lista");
        modelAndView.addObject("pacientes", pacientes);
        return modelAndView;
    }
    
    @RequestMapping (value = "/remove/{id}", name="removerPaciente")
    public ModelAndView remover(@PathVariable("id") Long id, RedirectAttributes redirectAttributes){
    	Paciente paciente = pacienteDao.findOne(id);
    	pacienteDao.delete(paciente);
    	redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("menssagem", "Paciente excluido com sucesso!");
        return new ModelAndView("redirect:/paciente");
    } 
}
