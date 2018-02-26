package com.great.mapper;

import java.util.List;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.COACH;

@MyBatisRepository
public interface COACHMapper {
	public List<COACH> yunguan_findCoach();
}
