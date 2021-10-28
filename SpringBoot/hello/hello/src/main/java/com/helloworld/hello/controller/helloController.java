package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/firstApp")
public class helloController {
	
	@GetMapping
	public String habilidades() {
		return "Mentalidade de crescimento e atenção aos detalhes.";
		
	}

}
