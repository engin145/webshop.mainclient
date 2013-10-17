package com.algo.webshop.client.controller;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.algo.webshop.client.authorization.OrderForm;
import com.algo.webshop.common.domain.Basket;
import com.algo.webshop.common.domainimpl.IGood;

@Controller
public class OrderServlet {
	
	private IGood serviceGood;
	
	@Autowired
	public void setUserService(@Qualifier("goodService") IGood service) {
		this.serviceGood = service;
	}
	
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public ModelAndView order(Model model, HttpSession session) {
		@SuppressWarnings("unchecked")
		List<Basket> basketList = (List<Basket>) session
				.getAttribute("basketList");
		List<Basket> ItemsInStock = new LinkedList<Basket>();
		List<Basket> noProductsInStock = new LinkedList<Basket>();
		List<Double> amountProductsInStock = new LinkedList<Double>();
		Iterator<Basket> iterator = basketList.iterator();
		float sum = 0;
		double amount;
		while (iterator.hasNext()) {
			Basket element = iterator.next();
			amount = serviceGood.getGood(element.getGoodId()).getAmount();
			if (amount >= element
					.getValue()) {
				ItemsInStock.add(element);
				sum += element.getPrice()*element.getValue();
				continue;
			}
			noProductsInStock.add(element);
			amountProductsInStock.add(amount);
		}
		if (ItemsInStock.size() > 0) {
			session.setAttribute("ItemsInStock", ItemsInStock);
			session.setAttribute("sum", sum);
		}
		if (noProductsInStock.size() > 0) {
			session.setAttribute("noProductsInStock", noProductsInStock);
			session.setAttribute("amountProductsInStock", amountProductsInStock);
		}
		String login = (String) session.getAttribute("login");
		if (login == null) {
			session.setAttribute("userData", "userData");
			OrderForm orderForm = new OrderForm();
			model.addAttribute("orderForm", orderForm);
		} else {
			session.setAttribute("userData", null);
		}

		return new ModelAndView("order");
	}

	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public String processSignup(@Valid final OrderForm orderForm,
			final BindingResult result, Model model, HttpSession sesion) {
		if (result.hasErrors()) {
			return "order";
		}
		return "redirect:index";
	}

	

	@RequestMapping(value = "/applayorder", method = RequestMethod.POST)
	public String applayorder(Model model, HttpSession sesion) {
		return "redirect:index";
	}

}
