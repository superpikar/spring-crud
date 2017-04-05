package com.project.springcrud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewsController {
	@RequestMapping("")
	public ModelAndView home(){
		ModelMap model = new ModelMap();
		model.addAttribute("name", "hahahaha!");
        return new ModelAndView("index", "name", "hahaha");
	}
}
