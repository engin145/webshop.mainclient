package com.algo.webshop.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RigistrationServlet {

	@RequestMapping("/signin")
	public String signIn() {
		return "signin";
	}

//	@RequestMapping("/signup")
//	public String signUp() {
//		return "signup";
//	}

	@RequestMapping("/forgotpass")
	public String forgotPass() {
		return "forgotpass";
	}
}
