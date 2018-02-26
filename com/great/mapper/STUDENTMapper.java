package com.great.mapper;

import java.util.List;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.ANNOUNCEMENT;
import com.great.javabean.STUDENT;

@MyBatisRepository
public interface STUDENTMapper {
	public STUDENT findDS();
	public List<STUDENT> find(); 
}
