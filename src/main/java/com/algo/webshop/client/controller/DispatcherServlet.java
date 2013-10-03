package com.algo.webshop.client.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import com.algo.webshop.common.domain.Price;
import com.algo.webshop.common.domainimpl.ICategory;
import com.algo.webshop.common.domainimpl.IGood;
import com.algo.webshop.common.domainimpl.IPrice;

@Controller
public class DispatcherServlet {

	private ICategory serviceCategory;
	private IGood serviceGood;
	private IPrice servicePrice;

	@Autowired
	public void setUserService(@Qualifier("goodService") IGood service) {
		this.serviceGood = service;
	}

	@Autowired
	public void setUserService(@Qualifier("categoryService") ICategory service) {
		this.serviceCategory = service;
	}

	@Autowired
	public void setUserService(@Qualifier("priceService") IPrice service) {
		this.servicePrice = service;
	}

	@RequestMapping({ "/", "/index" })
	public ModelAndView index(Model model) {
		List<Category> categorysList = serviceCategory.getCategorys();
		List<Good> goodListByOneCategory = new ArrayList<Good>();
		List<Price> priceList = servicePrice.getMaxDateAllPrice();
		Map<Integer,Float> priceMap = new HashMap<Integer,Float>();
		
		Random randomValue = new Random();

		for (Category cat : categorysList) {
			List<Good> goodList = serviceGood.getGoods(cat.getId());
			try {
				goodListByOneCategory.add(goodList.get(randomValue.nextInt(goodList.size())));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		for (Price price : priceList) {
			priceMap.put(price.getGoodId(), price.getValue());
		}
		model.addAttribute("priceMap",priceMap);
		model.addAttribute("goodList", goodListByOneCategory);
		model.addAttribute("categorysList", categorysList);
		return new ModelAndView("index");
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public ModelAndView categorys(Model model, @RequestParam("category") int categoryId) {
		List<Good> goods = serviceGood.getGoods(categoryId);
		List<Category> categorysList = serviceCategory.getCategorys();
		List<Price> priceList = servicePrice.getMaxDatePriceByOneCategory(categoryId);
		Map<Integer,Float> priceMap = new HashMap<Integer,Float>();
		for (Price price : priceList) {
			priceMap.put(price.getGoodId(), price.getValue());
		}
		model.addAttribute("categorysList", categorysList);
		model.addAttribute("goodList", goods);
		model.addAttribute("id", categoryId);
		model.addAttribute("priceMap",priceMap);
		return new ModelAndView("category");
	}
}
