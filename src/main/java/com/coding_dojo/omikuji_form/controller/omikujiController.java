package com.coding_dojo.omikuji_form.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class omikujiController {

	@RequestMapping("/")
	public String index(HttpSession session) {
		return "index.jsp";
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String submit(
			@RequestParam(value="num")int num,
			@RequestParam(value="city")String city,
			@RequestParam(value="name")String name,
			@RequestParam(value="skill")String skill,
			@RequestParam(value="thing")String thing,
			@RequestParam(value="nice")String nice,
			HttpSession session) {
		
		session.setAttribute("num", num);
		session.setAttribute("city", city);
		session.setAttribute("name", name);
		session.setAttribute("skill", skill);
		session.setAttribute("thing", thing);
		session.setAttribute("nice", nice);
		
		return "redirect:/display";
	}
	
	@RequestMapping("/display")
	public String display(HttpSession session, Model model) {
		
		model.addAttribute("num", session.getAttribute("num"));
		model.addAttribute("city", session.getAttribute("city"));
		model.addAttribute("name", session.getAttribute("name"));
		model.addAttribute("skill", session.getAttribute("skill"));
		model.addAttribute("thing", session.getAttribute("thing"));
		model.addAttribute("nice", session.getAttribute("nice"));
		
		return "display.jsp";
	}
	
}
