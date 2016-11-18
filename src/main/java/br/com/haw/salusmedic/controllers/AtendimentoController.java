package br.com.haw.salusmedic.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.haw.salusmedic.dao.AtendimentoDao;
import br.com.haw.salusmedic.model.Atendimento;

@Controller
@RequestMapping("/atendimento")
public class AtendimentoController {
    
    @Autowired
    private AtendimentoDao atendimentoDao;
    
    @RequestMapping(value ="form", name = "formAtendimento")
    public ModelAndView form(Atendimento atendimento) {
        return new ModelAndView("atendimento/form");
    }

    @RequestMapping (value = "/detalhe/{id}", name="editarAtendimento")
    public ModelAndView detalhe(@PathVariable("id") Long id){
    	ModelAndView modelAndView = new ModelAndView("atendimento/form");
    	Atendimento atendimento = atendimentoDao.findOne(id);
    	modelAndView.addObject("atendimento",atendimento);
    	return modelAndView;
    }
    
    @RequestMapping(method = RequestMethod.POST, name = "adiconarAtendimento")
    public ModelAndView grava(Atendimento atendimento, RedirectAttributes redirectAttributes) {
        atendimentoDao.save(atendimento);
        redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("menssagem", "Especialiade cadastrada com sucesso!");
        return new ModelAndView("redirect:/atendimento");
    }
    
    @RequestMapping(method = RequestMethod.GET, name="listarAtendimento")
    public ModelAndView listar() {
        List<Atendimento> atendimentos = atendimentoDao.findAll();
        ModelAndView modelAndView = new ModelAndView("atendimento/lista");
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
}
