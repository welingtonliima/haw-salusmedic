package br.com.haw.salusmedic.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.haw.salusmedic.service.ProntuarioService;

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
		modelAndView.addObject("prontuario", prontuarioService.getProntuariorDao().findOne(id));
		return modelAndView;
	}

}
