package com.atvd02.atvd02.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/atvd02")
public class atvd02 {
	
	@GetMapping
	public String habilidade () {
		return "O meu objetivo para essa semana é: Melhorar em MySQL e aprender SprinBoot";
	}

}
