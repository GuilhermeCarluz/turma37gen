package com.spring.atvd1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/atvd01")
public class Atvd01 {
	
	@GetMapping
	public String habilidades() {
		return "Atenção ao detalhe\nProatividade\nPersistência";
	}
}
