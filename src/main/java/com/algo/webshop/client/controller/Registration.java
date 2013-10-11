package com.algo.webshop.client.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.algo.webshop.client.authorization.SignupForm;
import com.algo.webshop.common.domain.Category;
import com.algo.webshop.common.domain.User;
import com.algo.webshop.common.domainimpl.ICategory;
import com.algo.webshop.common.domainimpl.IUser;

@Controller
public class Registration {

	private IUser userService;
	private ICategory serviceCategory;

	@Autowired
	public void setUserService(@Qualifier("userService") IUser service) {
		this.userService = service;
	}

	@Autowired
	public void setUserService(@Qualifier("categoryService") ICategory service) {
		this.serviceCategory = service;
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(ModelMap model) {
		SignupForm signupForm = new SignupForm();
		model.put("signupForm", signupForm);
		return "signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String processSignup(@Valid final SignupForm signupForm,
			final BindingResult result, Model model, HttpSession sesion) {
		if (result.hasErrors()
				&& userService.getUserByLogin(signupForm.getLogin()) == null) {
			return "signup";
		}
		userService.addUserInDataBase(new User(signupForm.getName(), signupForm
				.getEmail(), signupForm.getPhone(), signupForm.getLogin(),
				signupForm.getPassword()));
		List<Category> categorysList = serviceCategory.getCategorys();
		sesion.setAttribute("login", signupForm.getLogin());
		model.addAttribute("categorysList", categorysList);
		return "redirect:index";
	}

	@RequestMapping(value = "/signIn", method = RequestMethod.POST)
	public String signin(ModelMap model, @RequestParam("login") String login,
			@RequestParam("password") String password, HttpSession sesion) {
		List<Category> categorysList = serviceCategory.getCategorys();
		if (userService.getUserByLogPass(login, password) != null) {
			sesion.setAttribute("login", login);
			return "redirect:index";
		}
		model.addAttribute("categorysList", categorysList);
		model.addAttribute("error",
				"Вы ввели не правильный псевдоним или пароль");
		return "error";
	}
}
