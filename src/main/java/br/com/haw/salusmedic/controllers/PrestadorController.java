package br.com.haw.salusmedic.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.haw.salusmedic.model.Especialidade;
import br.com.haw.salusmedic.model.Hospital;
import br.com.haw.salusmedic.model.Perfil;
import br.com.haw.salusmedic.model.Prestador;
import br.com.haw.salusmedic.model.TipoConselho;
import br.com.haw.salusmedic.model.TipoPrestador;
import br.com.haw.salusmedic.model.Usuario;
import br.com.haw.salusmedic.propertyeditors.PrestadorPropertyEditor;
import br.com.haw.salusmedic.service.PrestadorService;
import br.com.haw.salusmedic.validation.PrestadorValidation;

@Controller
@RequestMapping("/prestador")
public class PrestadorController {

	@Autowired private PrestadorService prestadorService;
	@Autowired private PrestadorPropertyEditor prestadorPropertyEditor;
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.addValidators(new PrestadorValidation());
		webDataBinder.registerCustomEditor(Especialidade.class, prestadorPropertyEditor.getEspecialidadePropertyEditor());
		webDataBinder.registerCustomEditor(Hospital.class, prestadorPropertyEditor.getHospitalPropertyEditor());
		webDataBinder.registerCustomEditor(Perfil.class, prestadorPropertyEditor.getPerfilPropertyEditor());
		webDataBinder.registerCustomEditor(TipoPrestador.class, prestadorPropertyEditor.getTipoPrestadorPropertyEditor());
		webDataBinder.registerCustomEditor(TipoConselho.class, prestadorPropertyEditor.getTipoConselhoPropertyEditor());
	}

	@RequestMapping(value = "form", name = "formPrestador")
	public ModelAndView form(Prestador prestador) {
		ModelAndView modelAndView = new ModelAndView("prestador/form");
		modelAndView.addObject("tipoConselhos", prestadorService.getTipoConselhoDao().findAll());
		modelAndView.addObject("tipoPrestadores", prestadorService.getTipoPrestadorDao().findAll());
		modelAndView.addObject("hospitais", prestadorService.getHospitalDao().findAll());
		modelAndView.addObject("especialidades", prestadorService.getEspecialidadeDao().findAll());
		modelAndView.addObject("perfis", prestadorService.getPerfilDao().findAll());
		return modelAndView;
	}

	@RequestMapping(value = "/detalhe/{id}", name = "editarPrestador")
	public ModelAndView detalhe(@PathVariable("id") Long id) {
		ModelAndView modelAndView = new ModelAndView("prestador/form");
		modelAndView.addObject("tipoConselhos", prestadorService.getTipoConselhoDao().findAll());
		modelAndView.addObject("tipoPrestadores", prestadorService.getTipoPrestadorDao().findAll());
		modelAndView.addObject("hospitais", prestadorService.getHospitalDao().findAll());
		modelAndView.addObject("especialidades", prestadorService.getEspecialidadeDao().findAll());
		modelAndView.addObject("perfis", prestadorService.getPerfilDao().findAll());
		modelAndView.addObject("prestador", prestadorService.getPrestadorDao().findOne(id));
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST, name = "adiconarPrestador")
	public ModelAndView grava(@Valid Prestador prestador, BindingResult result, RedirectAttributes redirectAttributes){
		if (result.hasErrors()){
			return form(prestador);
		}
		if (prestador.getId() == null || prestador.getId() == 0) {
			Usuario novoUsuario;
			novoUsuario = prestadorService.getUsuarioService().criarPrestador(prestador.getCpf(), prestador.getUsuario().getPerfis());
			prestador.setUsuario(novoUsuario);
			System.out.println("Login.: "+novoUsuario.getLogin()+ " Senha.: "+novoUsuario.getSenha()+" Perfis.:"+novoUsuario.getPerfis());
		}
		prestadorService.getPrestadorDao().save(prestador);
		System.out.println("Login.: "+prestador.getUsuario().getLogin()+ " Senha.: "+prestador.getUsuario().getSenha()+" Perfis.:"+prestador.getUsuario().getPerfis());
		redirectAttributes.addFlashAttribute("status", "success");
		redirectAttributes.addFlashAttribute("menssagem", "Prestador cadastrado com sucesso!");
		return new ModelAndView("redirect:/prestador");
	}

	@RequestMapping(method = RequestMethod.GET, name = "listarPrestador")
	public ModelAndView listar() {
		ModelAndView modelAndView = new ModelAndView("prestador/lista");
		List<Prestador> prestadores = prestadorService.getPrestadorDao().findAll();
		modelAndView.addObject("prestadores", prestadores);
		return modelAndView;
	}

	@RequestMapping(value = "/remove/{id}", name = "removerPrestador")
	public ModelAndView remover(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		Prestador prestador = prestadorService.getPrestadorDao().findOne(id);
		prestadorService.getPrestadorDao().delete(prestador);
		redirectAttributes.addFlashAttribute("status", "success");
		redirectAttributes.addFlashAttribute("menssagem", "Prestador excluido com sucesso!");
		return new ModelAndView("redirect:/prestador");
	}
}
