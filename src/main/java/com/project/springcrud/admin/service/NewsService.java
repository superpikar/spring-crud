package com.project.springcrud.admin.service;

import java.util.HashMap;
import java.util.List;

import com.project.springcrud.dto.NewsDto;

public interface NewsService {
	public List<NewsDto> selectList();
	public NewsDto selectOne(int id);
}
