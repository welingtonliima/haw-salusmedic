package br.com.haw.salusmedic.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.haw.salusmedic.service.UsuarioService;

@Controller
public class DashboardController {
	
	@Autowired
	private UsuarioService usuarioService;

	@RequestMapping(value="/dashboard", method=RequestMethod.GET)
	public ModelAndView loginForm(){
		return new ModelAndView("dashboard/dashboardLista");
	}
	
}
