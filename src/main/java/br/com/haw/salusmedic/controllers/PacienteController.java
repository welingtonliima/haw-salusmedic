package br.com.haw.salusmedic.controllers;

import java.io.UnsupportedEncodingException;
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

import br.com.haw.salusmedic.dao.PacienteDao;
import br.com.haw.salusmedic.model.Paciente;
import br.com.haw.salusmedic.model.Perfil;
import br.com.haw.salusmedic.model.Usuario;
import br.com.haw.salusmedic.propertyeditors.PacientePropertyEditor;
import br.com.haw.salusmedic.service.PacienteService;
import br.com.haw.salusmedic.validation.PacienteValidation;

@Controller
@RequestMapping("/paciente")
public class PacienteController {

	@Autowired private PacienteDao pacienteDao;
	@Autowired private PacienteService pacienteService;
	@Autowired private PacientePropertyEditor pacientePropertyEditor;
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.addValidators(new PacienteValidation());
		webDataBinder.registerCustomEditor(Perfil.class, pacientePropertyEditor.getPerfilPropertyEditor());
	}
    
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
    
    @RequestMapping(method = RequestMethod.POST, name = "adicionarPaciente")
    public ModelAndView grava(@Valid Paciente paciente, BindingResult result, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
    	if (result.hasErrors()){
			return form(paciente);
		}
		if (paciente.getId() == null || paciente.getId() == 0) {
			Usuario novoUsuario;
			novoUsuario = pacienteService.getUsuarioService().criarPrestador(paciente.getCpf(), paciente.getUsuario().getPerfis());
			paciente.setUsuario(novoUsuario);
			System.out.println("Login.: "+novoUsuario.getLogin()+ " Senha.: "+novoUsuario.getSenha()+" Perfis.:"+novoUsuario.getPerfis());
		}
    	pacienteDao.save(paciente);
        redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("menssagem", "Paciente cadastrado com sucesso!");
        return listarPaciente(paciente, redirectAttributes);
    }
    
    @RequestMapping(method = RequestMethod.GET, name="listarPaciente")
    public ModelAndView listar() {
        List<Paciente> pacientes = pacienteDao.findAllByOrderByNomeAsc();
        ModelAndView modelAndView = new ModelAndView("paciente/lista");
        modelAndView.addObject("pacientes", pacientes);
        return modelAndView;
    }
    
    @RequestMapping(value = "formBuscaPaciente", name="buscarPaciente")
    public ModelAndView listarPaciente(Paciente paciente, RedirectAttributes redirectAttributes) {
        List<Paciente> pacientes;
        pacientes =  pacienteDao.findByCarteiraNacionalDaSaudeOrCpfOrNomeLike(paciente.getCarteiraNacionalDaSaude(), paciente.getCpf(), paciente.getNome());
        ModelAndView modelAndView = new ModelAndView("paciente/lista");
        modelAndView.addObject("pacientes", pacientes);
        return modelAndView;
    }
    
    @RequestMapping (value = "/remove/{id}", name="removerPaciente")
    public ModelAndView remover(@PathVariable("id") Long id, RedirectAttributes redirectAttributes){
    	Paciente paciente = pacienteDao.findOne(id);
    	pacienteDao.delete(paciente);
    	redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("menssagem", "Paciente desativado com sucesso!");
        return new ModelAndView("redirect:/paciente");
    } 
}
