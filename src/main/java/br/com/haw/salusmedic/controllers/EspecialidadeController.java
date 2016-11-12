package br.com.haw.salusmedic.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.haw.salusmedic.dao.EspecialidadeDao;
import br.com.haw.salusmedic.model.Especialidade;

@Controller
@RequestMapping("/especialidade")
public class EspecialidadeController {

    @Autowired
    private EspecialidadeDao especialidadeDao;
    
    @RequestMapping(value = "form", name = "formEspecialidade")
    public ModelAndView form(Especialidade especialidade) {
        return new ModelAndView("especialidade/form");
    }

    @RequestMapping (value = "/detalhe/{id}", name="editarEspecialidade")
    public ModelAndView detalhe(@PathVariable("id") Long id){
    	ModelAndView modelAndView = new ModelAndView("especialidade/form");
    	Especialidade especialidade = especialidadeDao.findOne(id);
    	modelAndView.addObject("especialidade",especialidade);
    	return modelAndView;
    }
    
    @RequestMapping(method = RequestMethod.POST, name = "adiconaEspecialidade")
    public ModelAndView grava(Especialidade especialidade, RedirectAttributes redirectAttributes) {
        especialidadeDao.save(especialidade);
        redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("menssagem", "Especialiade cadastrada com sucesso!");
        return new ModelAndView("redirect:/especialidade");
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView listar() {
        List<Especialidade> especialidades = especialidadeDao.findAll();
        ModelAndView modelAndView = new ModelAndView("especialidade/lista");
        modelAndView.addObject("especialidades", especialidades);
        return modelAndView;
    }
    
    @RequestMapping (value = "/remove/{id}", name="removerEspecialidade")
    public ModelAndView remover(@PathVariable("id") Long id, RedirectAttributes redirectAttributes){
    	Especialidade especialidade = especialidadeDao.findOne(id);
    	especialidadeDao.delete(especialidade);
    	redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("menssagem", "Especialiade excluida com sucesso!");
        return new ModelAndView("redirect:/especialidade");
    } 
}
