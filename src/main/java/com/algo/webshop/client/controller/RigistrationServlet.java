package com.algo.webshop.client.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.algo.webshop.client.authentication.SignupForm;
import com.algo.webshop.client.authentication.SignupValidator;

@Controller
public class RigistrationServlet {

	@RequestMapping("/signin")
	public String signIn() {
		return "signin";
	}

	@Autowired
	private SignupValidator signupValidator;

	@RequestMapping(value = { "/signup" }, method = RequestMethod.GET)
	public String signup(ModelMap model) {
		SignupForm signupForm = new SignupForm();
		model.put("signupForm", signupForm);
		return "signup";
	}

	@RequestMapping(value = { "/signup" }, method = RequestMethod.POST)
	public String processSignup(SignupForm signupForm, BindingResult result) {
		signupValidator.validate(signupForm, result);
		if (result.hasErrors()) {
			return "signup";
		}
		return "signup-success";
	}

	@RequestMapping("/forgotpass")
	public String forgotPass() {
		return "forgotpass";
	}
}
