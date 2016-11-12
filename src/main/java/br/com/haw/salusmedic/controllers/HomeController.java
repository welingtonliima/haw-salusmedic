package br.com.haw.salusmedic.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index(){
		System.out.println("Começando o projeto");
		return "home";
	}
}
