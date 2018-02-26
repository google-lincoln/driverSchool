package com.great.mapper;

import java.util.List;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.FRIENDLINK;

@MyBatisRepository
public interface FRIENDLINKMapper {
	public void insert(FRIENDLINK link);
	public List<FRIENDLINK> findAll();
}
