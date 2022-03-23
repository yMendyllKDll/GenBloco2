package com.helloword.Hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class HelloController {
	
		@GetMapping("/hello")
		public String hello() {
			return "Hello world";
		}
		
		@GetMapping("/bsm")
		public String bsm() {
			return "Orientação ao Futuro; \n Responsabilidade Pessoal; \n Mentalidade de Crescimento; \n"
					+ "Persistência; \n Trabalho em Equipe; \n Atenção aos Detalhes; \n Proatividade; \n Comunicação; \n";
		}
		
		@GetMapping("/objetivos")
		public String objetivos() {
			return "Aprender Spring";
		}
}
