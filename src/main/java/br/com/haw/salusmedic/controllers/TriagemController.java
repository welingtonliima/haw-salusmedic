package br.com.haw.salusmedic.controllers;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.haw.salusmedic.dao.TriagemDao;
import br.com.haw.salusmedic.model.Triagem;

@Controller
@RequestMapping("/triagem")
public class TriagemController {
	
	@Autowired
    private TriagemDao tiagemDao;

    @RequestMapping(value = "form", name = "formTriagem")
    public ModelAndView form(Triagem triagem) {
        return new ModelAndView("triagem/form");
    }
    
    @RequestMapping(method = RequestMethod.POST, name = "adicionarTriagem")
    public ModelAndView grava(Triagem triagem, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
    	tiagemDao.save(triagem);
        redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("menssagem", "Triagem cadastrado com sucesso!");
        return new ModelAndView("redirect:/paciente");
    }
}
