package com.algo.webshop.client.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.algo.webshop.client.authorization.SignupForm;
import com.algo.webshop.common.domainimpl.IGood;
import com.algo.webshop.common.domainimpl.IPrice;
import com.algo.webshop.common.domainimpl.IUser;

@Controller
public class Registration {
	
	private IUser userService;
	
	@Autowired
	public void setUserService(@Qualifier("userService") IUser service) {
		this.userService = service;
	}
	
	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String signup(ModelMap model) {
		SignupForm signupForm = new SignupForm();
		model.put("signupForm", signupForm);
		return "signup";
	}

	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public String processSignup(@Valid final SignupForm signupForm, final BindingResult result) {
		if (result.hasErrors()) {
			return "signup";
		}
		return "signup-success";
	}
	
	@RequestMapping(value="/signIn", method = RequestMethod.POST)
	public String signin(ModelMap model, @RequestParam("login") String login, @RequestParam("password") String password) {
		if (userService.getUserByLogPass(login, password)!=null) {
			
		}
		return null;
	}
}
