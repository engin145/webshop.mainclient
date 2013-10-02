package com.algo.webshop.client.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.algo.webshop.common.domain.Category;
import com.algo.webshop.common.domain.Good;
import com.algo.webshop.common.domainimpl.ICategory;
import com.algo.webshop.common.domainimpl.IGood;

@Controller
public class FullGoodServlet {
	
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

	@RequestMapping("/fullgood")
	public ModelAndView header(Model model,@PathVariable Integer category_id) { 
		List<Good> listGood = serviceGood.getGoods(category_id);
		List<Category> listCategory = serviceCategory.getCategorys();
		Map<Integer,Category> mapCategory = new HashMap<Integer,Category>();
		for (Category category : listCategory) {
			mapCategory.put(category.getId(), category);
		}
		model.addAttribute(listGood);
		model.addAttribute(mapCategory);
		return new ModelAndView("foolgood");
	}
}
