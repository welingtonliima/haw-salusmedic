package br.com.haw.salusmedic.controllers;

import java.io.UnsupportedEncodingException;
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
import br.com.haw.salusmedic.dao.PerfilDao;
import br.com.haw.salusmedic.dao.PrestadorDao;
import br.com.haw.salusmedic.dao.TipoConselhoDao;
import br.com.haw.salusmedic.dao.TipoPrestadorDao;
import br.com.haw.salusmedic.model.Especialidade;
import br.com.haw.salusmedic.model.Hospital;
import br.com.haw.salusmedic.model.Perfil;
import br.com.haw.salusmedic.model.Prestador;
import br.com.haw.salusmedic.model.TipoConselho;
import br.com.haw.salusmedic.model.TipoPrestador;
import br.com.haw.salusmedic.model.Usuario;
import br.com.haw.salusmedic.propertyeditors.EspecialidadePropertyEditor;
import br.com.haw.salusmedic.propertyeditors.HospitalPropertyEditor;
import br.com.haw.salusmedic.propertyeditors.PerfilPropertyEditor;
import br.com.haw.salusmedic.propertyeditors.TipoConselhoPropertyEditor;
import br.com.haw.salusmedic.propertyeditors.TipoPrestadorPropertyEditor;

@Controller
@RequestMapping("/prestador")
public class PrestadorController {

	@Autowired private PrestadorDao prestadorDao;
	@Autowired private TipoPrestadorDao tipoPrestadorDao;
	@Autowired private TipoConselhoDao tipoConselhoDao;
	@Autowired private HospitalDao hospitalDao;
	@Autowired private EspecialidadeDao especialidadeDao;
	@Autowired private PerfilDao perfilDao;
	@Autowired private EspecialidadePropertyEditor especialidadePropertyEditor;
	@Autowired private HospitalPropertyEditor hospitalPropertyEditor;
	@Autowired private PerfilPropertyEditor perfilPropertyEditor;
	@Autowired private TipoPrestadorPropertyEditor tipoPrestadorPropertyEditor;
	@Autowired private TipoConselhoPropertyEditor tipoConselhoPropertyEditor;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(Especialidade.class, especialidadePropertyEditor);
		webDataBinder.registerCustomEditor(Hospital.class, hospitalPropertyEditor);
		webDataBinder.registerCustomEditor(Perfil.class, perfilPropertyEditor);
		webDataBinder.registerCustomEditor(TipoPrestador.class, tipoPrestadorPropertyEditor);
		webDataBinder.registerCustomEditor(TipoConselho.class, tipoConselhoPropertyEditor);
	}

	@RequestMapping(value = "form", name = "formPrestador")
	public ModelAndView form(Prestador prestador) {
		ModelAndView modelAndView = new ModelAndView("prestador/form");
		List<TipoConselho> tipoConselhos = tipoConselhoDao.findAll();
		List<TipoPrestador> tipoPrestadores = tipoPrestadorDao.findAll();
		List<Hospital> hospitais = hospitalDao.findAll();
		List<Especialidade> especialidades = especialidadeDao.findAll();
		List<Perfil> perfis = perfilDao.findAll();
		modelAndView.addObject("tipoConselhos", tipoConselhos);
		modelAndView.addObject("tipoPrestadores", tipoPrestadores);
		modelAndView.addObject("hospitais", hospitais);
		modelAndView.addObject("especialidades", especialidades);
		modelAndView.addObject("perfis", perfis);
		return modelAndView;
	}

	@RequestMapping(value = "/detalhe/{id}", name = "editarPrestador")
	public ModelAndView detalhe(@PathVariable("id") Long id) {
		ModelAndView modelAndView = new ModelAndView("prestador/form");
		List<TipoConselho> tipoConselhos = tipoConselhoDao.findAll();
		List<TipoPrestador> tipoPrestadores = tipoPrestadorDao.findAll();
		List<Hospital> hospitais = hospitalDao.findAll();
		List<Especialidade> especialidades = especialidadeDao.findAll();
		List<Perfil> perfis = perfilDao.findAll();
		modelAndView.addObject("tipoConselhos", tipoConselhos);
		modelAndView.addObject("tipoPrestadores", tipoPrestadores);
		modelAndView.addObject("hospitais", hospitais);
		modelAndView.addObject("especialidades", especialidades);
		modelAndView.addObject("perfis", perfis);
		Prestador prestador = prestadorDao.findOne(id);
		modelAndView.addObject("prestador", prestador);
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST, name = "adiconarPrestador")
	public ModelAndView grava(Prestador prestador, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
		if (prestador.getId() == null) {
			Usuario novoUsuario = new Usuario();
			novoUsuario.setLogin(prestador.getCpf().replaceAll("[^0-9]*", ""));
			novoUsuario.setSenha("$2a$04$qP517gz1KNVEJUTCkUQCY.JzEoXzHFjLAhPQjrg5iP6Z/UmWjvUhq");
			prestador.setUsuario(novoUsuario);
		}
		prestadorDao.save(prestador);
		redirectAttributes.addFlashAttribute("status", "success");
		redirectAttributes.addFlashAttribute("menssagem", "Prestador cadastrado com sucesso!");
		return new ModelAndView("redirect:/prestador");
	}

	@RequestMapping(method = RequestMethod.GET, name = "listarPrestador")
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
