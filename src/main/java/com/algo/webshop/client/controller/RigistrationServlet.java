package com.algo.webshop.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RigistrationServlet {

	@RequestMapping("/signin")
	public String signIn() {
		return "signin";
	}
	
	@RequestMapping(value = "/inputLog", method = RequestMethod.GET)
	public String respInputLog(@RequestParam String log) {
		
		return null;
	}

	@RequestMapping("/forgotpass")
	public String forgotPass() {
		return "forgotpass";
	}
}
