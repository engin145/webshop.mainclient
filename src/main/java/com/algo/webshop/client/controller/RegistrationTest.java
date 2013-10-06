package com.algo.webshop.client.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.algo.webshop.client.authorization.SignupForm;

@Controller
public class RegistrationTest {

	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String processSignup(@Valid final SignupForm signupForm, final BindingResult result, HttpSession session, final RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.exampleForm", result);
	        redirectAttributes.addFlashAttribute("signupForm", signupForm);
			return "redirect:/#join_form";
		}
		return "index";
	}

}
