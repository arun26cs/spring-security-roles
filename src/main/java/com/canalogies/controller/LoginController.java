package com.canalogies.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	
	@GetMapping("/showMyLoginPage")
	public String showMyPage() {
		return "custom-login";
	}
	
	@GetMapping("/accessDeniedPage")
	public String accessDeniedPage() {
		return "AccessDenied";
	}
}
