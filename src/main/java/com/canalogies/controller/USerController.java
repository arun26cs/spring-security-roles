package com.canalogies.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class USerController {

	
	@GetMapping("/leader")
	public String showLeaders() {
		return "leaders";
	}
	
	
	@GetMapping("/system")
	public String showSystem() {
		return "system";
	}
	 
}
