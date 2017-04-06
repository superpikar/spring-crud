package com.project.springcrud.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller("AdminNewsController")
public class NewsController {
	@RequestMapping("/admin/news")
	public ModelAndView listNews(){
		ModelMap model = new ModelMap();
		model.addAttribute("name", "hahahaha!");
        return new ModelAndView("admin/news/news-list", "model", model);
	}
	
	@RequestMapping("/admin/news/new")
	public ModelAndView newNews(){
		ModelMap model = new ModelMap();
		model.addAttribute("action", "new");
		model.addAttribute("name", "hahahaha!");
        return new ModelAndView("admin/news/news-single", "model", model);
	}
}
