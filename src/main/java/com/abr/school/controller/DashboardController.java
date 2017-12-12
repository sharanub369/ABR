package com.abr.school.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class DashboardController {

	@RequestMapping(value="/dashboard")
	public String initView() {
		return "dashboard";
	}
}
