package com.great.mapper;

import java.util.List;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.NEWS;

@MyBatisRepository
public interface NEWSMapper {
	public void insert(NEWS news);
	public List<NEWS> findAll();
	public NEWS find(String ntitle);
}
