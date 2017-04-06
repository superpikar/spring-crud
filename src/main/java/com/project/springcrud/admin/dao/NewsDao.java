package com.project.springcrud.admin.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.session.SqlSession;

import com.project.springcrud.dto.NewsDto;

/**
 * sample taken from https://github.com/mybatis/spring/blob/master/src/test/java/org/mybatis/spring/sample/mapper/UserDaoImpl.java
 * @author @superpikar
 *
 */
@Repository
public class NewsDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insertNews(NewsDto news){
		return 0;
	}
	
	public List<NewsDto> selectList(){
		return sqlSession.selectList("NewsMapper.selectList");
	}
	
	public NewsDto selectOne(int id){
		return sqlSession.selectOne("NewsMapper.selectOne", id);
	}
}
