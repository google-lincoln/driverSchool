package com.great.mapper;

import java.util.List;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.SYSTEMLOG;

@MyBatisRepository
public interface SYSTEMLOGMapper {
	public void insert(SYSTEMLOG log);
	public List<SYSTEMLOG> findAll();
}
