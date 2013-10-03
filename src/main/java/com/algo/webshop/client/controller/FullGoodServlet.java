package com.algo.webshop.client.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.algo.webshop.common.domain.Good;
import com.algo.webshop.common.domain.Price;
import com.algo.webshop.common.domainimpl.IGood;
import com.algo.webshop.common.domainimpl.IPrice;

@Controller
public class FullGoodServlet {
	
	private IGood serviceGood;
	private IPrice servicePrice;
	
	@Autowired
	public void setUserService(@Qualifier("goodService") IGood service) {
		this.serviceGood = service;
	}
	
	@Autowired
	public void setUserService(@Qualifier("priceService") IPrice service) {
		this.servicePrice = service;
	}

	@RequestMapping(value="/fullgood", method=RequestMethod.GET)
	public ModelAndView header(Model model,@RequestParam("good") int goodId) { 
		Good good = serviceGood.getGood(goodId);
		Price price = servicePrice.getMaxDatePriceByOneGood(goodId);
		model.addAttribute(good);
		model.addAttribute(price);
		
		return new ModelAndView("fullgood");
	}
}
