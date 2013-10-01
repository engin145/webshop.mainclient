package com.algo.webshop.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FullGoodServlet {

	@RequestMapping("/fullgood")
	public ModelAndView header(Model model) {
		
		return new ModelAndView("foolgood");
	}
}
