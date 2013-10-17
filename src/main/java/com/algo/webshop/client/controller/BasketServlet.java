package com.algo.webshop.client.controller;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.algo.webshop.common.domain.Basket;

@Controller
public class BasketServlet {

	@SuppressWarnings("unchecked")
	@RequestMapping("/basket")
	public ModelAndView basket(Model model, HttpSession session) {
		float sum = 0;
		List<Basket> basketList = new LinkedList<Basket>();
		try {
			basketList.addAll((LinkedList<Basket>) session
					.getAttribute("basketList"));
		} catch (Exception e) {
			e.getStackTrace();
		}

		for (Basket basket : basketList) {
			sum += basket.getValue() * basket.getPrice();
		}

		model.addAttribute("basketList", basketList);
		model.addAttribute("sum", sum);
		return new ModelAndView("basket");
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/deletegood", method = RequestMethod.POST)
	public ModelAndView deleteGood(Model model,
			@RequestParam("goodId") int goodId, HttpSession session) {
		List<Basket> basketList = new LinkedList<Basket>();
		basketList.addAll((LinkedList<Basket>) session
				.getAttribute("basketList"));
		for (Basket basketInSession : (LinkedList<Basket>) session
				.getAttribute("basketList")) {
			if (basketInSession.getGoodId() == goodId) {
				basketList.remove(basketInSession);
			}
		}
		session.setAttribute("basketList", basketList);
		return new ModelAndView("redirect:basket");
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/upvalue", method = RequestMethod.POST)
	public ModelAndView upValue(Model model,
			@RequestParam("goodId") int goodId, HttpSession session) {
		List<Basket> basketList = new LinkedList<Basket>();
		basketList.addAll((LinkedList<Basket>) session
				.getAttribute("basketList"));
		for (Basket basketInSession : (LinkedList<Basket>) session
				.getAttribute("basketList")) {
			if (basketInSession.getGoodId() == goodId) {
				basketInSession.setValue(basketInSession.getValue() + 1);
			}
		}
		session.setAttribute("basketList", basketList);
		return new ModelAndView("redirect:basket");
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/downvalue", method = RequestMethod.POST)
	public ModelAndView downValue(Model model,
			@RequestParam("goodId") int goodId, HttpSession session) {
		List<Basket> basketList = new LinkedList<Basket>();
		basketList.addAll((LinkedList<Basket>) session
				.getAttribute("basketList"));
		for (Basket basketInSession : (LinkedList<Basket>) session
				.getAttribute("basketList")) {
			if (basketInSession.getGoodId() == goodId) {
				if (basketInSession.getValue() > 1) {
					basketInSession.setValue(basketInSession.getValue() - 1);
				}

			}
		}
		session.setAttribute("basketList", basketList);
		return new ModelAndView("redirect:basket");
	}

}
