package com.project.springcrud.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller("AdminNewsController")
public class NewsController {
	@RequestMapping("/admin")
	public ModelAndView home(){
		ModelMap model = new ModelMap();
		model.addAttribute("name", "hahahaha!");
        return new ModelAndView("admin/index", "model", model);
	}
}
