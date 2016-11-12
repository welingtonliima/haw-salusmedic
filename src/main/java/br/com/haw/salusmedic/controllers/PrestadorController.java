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

import br.com.haw.salusmedic.dao.EspecialidadeDao;
import br.com.haw.salusmedic.dao.HospitalDao;
import br.com.haw.salusmedic.dao.PrestadorDao;
import br.com.haw.salusmedic.dao.TipoConselhoDao;
import br.com.haw.salusmedic.dao.TipoPrestadorDao;
import br.com.haw.salusmedic.model.Especialidade;
import br.com.haw.salusmedic.model.Hospital;
import br.com.haw.salusmedic.model.Prestador;
import br.com.haw.salusmedic.model.TipoConselho;
import br.com.haw.salusmedic.model.TipoPrestador;
import br.com.haw.salusmedic.propertyeditors.EspecialidadePropertyEditor;
import br.com.haw.salusmedic.propertyeditors.HospitalPropertyEditor;

@Controller
@RequestMapping("/prestador")
public class PrestadorController {

	@Autowired private PrestadorDao prestadorDao;
	@Autowired private TipoPrestadorDao tipoPrestadorDao;
	@Autowired private TipoConselhoDao tipoConselhoDao;
	@Autowired private HospitalDao hospitalDao;
	@Autowired private EspecialidadeDao especialidadeDao;
	@Autowired private EspecialidadePropertyEditor especialidadePropertyEditor;
	@Autowired private HospitalPropertyEditor hospitalPropertyEditor;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(Especialidade.class, especialidadePropertyEditor);
		webDataBinder.registerCustomEditor(Hospital.class, hospitalPropertyEditor);
	}
	
	@RequestMapping(value = "form", name = "formPrestador")
	public ModelAndView form(Prestador prestador) {
		ModelAndView modelAndView = new ModelAndView("prestador/form");
		List<TipoConselho> tipoConselhos = tipoConselhoDao.findAll();
		List<TipoPrestador> tipoPrestadores = tipoPrestadorDao.findAll();
		List<Hospital> hospitais = hospitalDao.findAll();
		List<Especialidade> especialidades = especialidadeDao.findAll();
		modelAndView.addObject("tipoConselhos", tipoConselhos);
		modelAndView.addObject("tipoPrestadores", tipoPrestadores);
		modelAndView.addObject("hospitais", hospitais);
		modelAndView.addObject("especialidades", especialidades);
		return modelAndView;
	}

	@RequestMapping(value = "/detalhe/{id}", name = "editarPrestador")
	public ModelAndView detalhe(@PathVariable("id") Long id) {
		ModelAndView modelAndView = new ModelAndView("prestador/form");
		Prestador prestador = prestadorDao.findOne(id);
		modelAndView.addObject("prestador", prestador);
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST, name = "adiconarPrestador")
	public ModelAndView grava(Prestador prestador, RedirectAttributes redirectAttributes) {
		prestadorDao.save(prestador);
		redirectAttributes.addFlashAttribute("status", "success");
		redirectAttributes.addFlashAttribute("menssagem", "Prestador cadastrado com sucesso!");
		return new ModelAndView("redirect:/prestador");
	}

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView listar() {
		List<Prestador> prestadores = prestadorDao.findAll();
		ModelAndView modelAndView = new ModelAndView("prestador/lista");
		modelAndView.addObject("prestadores", prestadores);
		return modelAndView;
	}

	@RequestMapping(value = "/remove/{id}", name = "removerPrestador")
	public ModelAndView remover(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		Prestador prestador = prestadorDao.findOne(id);
		prestadorDao.delete(prestador);
		redirectAttributes.addFlashAttribute("status", "success");
		redirectAttributes.addFlashAttribute("menssagem", "Prestador excluido com sucesso!");
		return new ModelAndView("redirect:/prestador");
	}
}
