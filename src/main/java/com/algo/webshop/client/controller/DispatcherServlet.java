package com.algo.webshop.client.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.algo.webshop.common.domain.Category;
import com.algo.webshop.common.domain.Good;
import com.algo.webshop.common.domainimpl.ICategory;
import com.algo.webshop.common.domainimpl.IGood;

@Controller
public class DispatcherServlet {
	
	private ICategory serviceCategory;
	private IGood serviceGood;
	
	@Autowired
	public void setUserService(@Qualifier("goodService") IGood service) {
		this.serviceGood = service;
	}
	
	@Autowired
	public void setUserService(@Qualifier("categoryService") ICategory service) {
		this.serviceCategory = service;
	}

	@RequestMapping({ "/", "/index" })
	public ModelAndView index(Model model) {
		List<Category> categorysList = serviceCategory.getCategorys();
		List<Good> goodListByOneCategory = new ArrayList<Good>();
		Random randomValue = new Random();
		
		for(Category cat : categorysList){
			List<Good> goodList = serviceGood.getGoods(cat.getId());
			try {
				goodListByOneCategory.add(goodList.get(randomValue.nextInt(goodList.size())));
			} catch (Exception e) {
				e.printStackTrace();
			}
				
		}
		model.addAttribute("goodList", goodListByOneCategory);
		model.addAttribute("categorysList", categorysList);
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public ModelAndView categorys(Model model, @RequestParam("category") int categoryId) {
		List<Good> goods = serviceGood.getGoods(categoryId);
		List<Category> categorysList = serviceCategory.getCategorys();
		model.addAttribute("categorysList", categorysList);
		model.addAttribute("goodList", goods);
		model.addAttribute("id", categoryId);
		return new ModelAndView("category");
	}
}
