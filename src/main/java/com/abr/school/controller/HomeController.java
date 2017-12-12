package com.abr.school.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = "/")
	public String welcome(Model model) {
		model.addAttribute("name", "Home Page");
		model.addAttribute("description", "unsecured page !");
		System.out.println("===========Home========");
		return "home";
	}
}
