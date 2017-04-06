package com.project.springcrud.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("AdminDashboardController")
public class DashboardController {
	@RequestMapping("/admin")
	public String dashboard(){
		return "redirect:admin/news";
	}
}
