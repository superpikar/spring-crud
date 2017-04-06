package com.project.springcrud.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.springcrud.admin.service.NewsService;

@Controller("FrontNewsController")
public class NewsController {
	@Autowired
	private NewsService newsService;
	
	@RequestMapping("")
	public ModelAndView list(Model model){
		model.addAttribute("name", "hahahaha!");
		model.addAttribute("news", newsService.selectList());
        return new ModelAndView("front/news/news-list", "model", model);
	}
	
	@RequestMapping("/news/{id}")
	public ModelAndView single(Model model, @PathVariable int id){
		model.addAttribute("name", "hahahaha!");
		model.addAttribute("news", newsService.selectOne(id));
        return new ModelAndView("front/news/news-single", "model", model);
	}
}
