package com.project.springcrud.admin.service.impementation;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.project.springcrud.admin.dao.NewsDao;
import com.project.springcrud.admin.service.NewsService;
import com.project.springcrud.dto.NewsDto;

@Component
public class NewsServiceImplementation implements NewsService {
	
	@Autowired
	private NewsDao newsDao;
	
	@Override
	public List<NewsDto> selectList() {
		return newsDao.selectList();
	}

	@Override
	public NewsDto selectOne(int id) {
		return newsDao.selectOne(id);
	}

}
