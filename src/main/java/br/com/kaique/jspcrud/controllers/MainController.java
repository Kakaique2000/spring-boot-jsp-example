package br.com.kaique.jspcrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.kaique.jspcrud.services.MainService;
import lombok.val;

@Controller
@RequestMapping("/index")
public class MainController {

	@Autowired
	MainService service;
	
		@GetMapping
		public String main(Model model) {
			model.addAttribute("nome", "Laís");
			return "index";
		}
		
		@GetMapping("/cachorros")
		public String getCachorros(Model model) {
			val cachorros = service.getCachorros();
			model.addAttribute("cachorros", cachorros);
			return "cachorros";			
		}
		
	
}
